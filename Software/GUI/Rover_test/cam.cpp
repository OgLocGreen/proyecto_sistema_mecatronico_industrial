#include "cam.h"

#include <QTcpSocket>

#define LOG_COMM_EVENTS     1
#define SERVER_ADDRESS      "192.168.4.1"
#define SERVER_PORT_HTML    80
#define SERVER_PORT_STREAM  81

#define CAM_RESOLUTION_QVGA_320x240     5
#define CAM_RESOLUTION_VGA_640x480     8
#define CAM_RESOLUTION_SVGA_800x600     9
#define CAM_RESOLUTION_XGA_1024x768     10


Cam::Cam()
{

}

void Cam::TryConnectionWithServer()
{
    char txt_snd[1024];

    cli_html.connectToHost(QHostAddress(SERVER_ADDRESS),SERVER_PORT_HTML);
    if (cli_html.waitForConnected())
    {
        sprintf(txt_snd,"GET %s HTTP/1.1\r\n","/");
        sprintf(txt_snd+strlen(txt_snd),"Host: %s:%d\r\n",SERVER_ADDRESS,SERVER_PORT_HTML);
        strcat(txt_snd,"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\r\n");
        strcat(txt_snd,"Cache-Control: max-age=0\r\n");
        strcat(txt_snd,"Connection: keep-alive\r\n");
        strcat(txt_snd,"Upgrade-Insecure-Requests: 1\r\n");
        int n=cli_html.write(txt_snd,strlen(txt_snd));
#ifdef LOG_COMM_EVENTS
        printf("Connection port 80 success, sent %d bytes\n",n); fflush(stdout);
#endif

        SetCameraResolution(CAM_RESOLUTION_QVGA_320x240);
    }

    cli_stream.connectToHost(QHostAddress(SERVER_ADDRESS),SERVER_PORT_STREAM);
    if (cli_stream.waitForConnected())
    {
        //QAbstractSocket::connect(&cli_stream,SIGNAL(readyRead()),this,SLOT(OnDataReceived()));
        //QAbstractSocket::connect(&cli_stream,SIGNAL(disconnected()),this,SLOT(OnDisconnected()));

        sprintf(txt_snd,"GET %s HTTP/1.1\r\n","/stream");
        sprintf(txt_snd+strlen(txt_snd),"Host: %s:%d\r\n",SERVER_ADDRESS,SERVER_PORT_STREAM);
        strcat(txt_snd,"Accept: image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8\r\n");
        strcat(txt_snd,"Connection: keep-alive\r\n");
        strcat(txt_snd,"\r\n");
        int n=cli_stream.write(txt_snd,strlen(txt_snd));
#ifdef LOG_COMM_EVENTS
        printf("Connection port 81 success, sent %d bytes\n",n); fflush(stdout);
#endif
    }
    else
    {
#ifdef LOG_COMM_EVENTS
        printf("Connection failed\n"); fflush(stdout);
#endif
    }

}

void Cam::SetCameraResolution(int res)
{
    char txt_snd[1024];
    sprintf(txt_snd,"GET /control?var=framesize&val=%d HTTP/1.1\r\n",res);
    sprintf(txt_snd+strlen(txt_snd),"Host: %s:%d\r\n",SERVER_ADDRESS,SERVER_PORT_HTML);
    strcat(txt_snd,"Accept: */*\r\n");
    strcat(txt_snd,"Cache-Control: max-age=0\r\n");
    strcat(txt_snd,"Connection: keep-alive\r\n");
    strcat(txt_snd,"\r\n");
    int n=cli_html.write(txt_snd,strlen(txt_snd));
#ifdef LOG_COMM_EVENTS
    printf("Camera resolution success, sent %d bytes\n",n); fflush(stdout);
#endif
}

void Cam::OnDataReceived()
{
    while (cli_stream.bytesAvailable())
    {
        recv += cli_stream.readAll();
    }

    int index=recv.indexOf("Content-Type: image/jpeg");
    if (index>=0)
    {
        index=recv.indexOf("Content-Length: ",index);
        int len=atoi(recv.constData()+index+strlen("Content-Length: "));
#ifdef LOG_COMM_EVENTS
        printf("Len=%d\n",len); fflush(stdout);
#endif
        int iStart=recv.indexOf("\r\n\r\n\r\n",index)+6;
        int lenHex;
        sscanf(recv.constData()+iStart,"%x",&lenHex);
        if (lenHex!=len)
        {
#ifdef LOG_COMM_EVENTS
            printf("Invalid len hex\n"); fflush(stdout);
#endif
            return;
        }
        iStart=recv.indexOf("\r\n",iStart)+2;
        const unsigned char* ptr=(const unsigned char*) recv.constData()+iStart;

#ifdef LOG_COMM_EVENTS
        printf("%02x%02x%02x%02x\n",ptr[0],ptr[1],ptr[2],ptr[3]);
        fflush(stdout);
#endif
        int recv_len=recv.length()-iStart;
        if (recv_len>=len)
        {
#ifdef LOG_COMM_EVENTS
            printf("%d bytes received, decoding image\n",recv_len); fflush(stdout);
#endif
            //QPixmap img;
            //bool ok=img.loadFromData(ptr,len,"jpg");
            //if (ok)
            {
#ifdef LOG_COMM_EVENTS
                //printf("Image %dx%d received\n",img.width(),img.height()); fflush(stdout);
#endif
                //ui->qVideoImage->setPixmap(img);
            }
            recv=recv.mid(iStart+len);
            return;
        }
#ifdef LOG_COMM_EVENTS
        else
        {
            printf("%d bytes received, %d needed\n",recv_len,len); fflush(stdout);
        }
#endif
    }
    return;
}

void Cam::OnDisconnected()
{
#ifdef LOG_COMM_EVENTS
            printf("Disconnected. Retry\n"); fflush(stdout);
#endif
    TryConnectionWithServer();
}

void Cam::OnError(QAbstractSocket::SocketError err)
{
#ifdef LOG_COMM_EVENTS
            printf("Error %d: %s\n",(int)err,cli_stream.errorString().toLatin1().constData()); fflush(stdout);
#endif

}

