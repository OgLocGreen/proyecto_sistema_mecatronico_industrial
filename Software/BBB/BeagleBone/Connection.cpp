#include "Connection.h"

Connection::Connection(QObject *parent) : QObject(parent)
{
    socket=NULL;
    QObject::connect(&server,SIGNAL(newConnection()),this,SLOT(OnConnectionRequest()));

    bool ok=server.listen(QHostAddress::Any,52011);
    if (ok)
       qDebug() << "Listen PC ok";
    else
       qDebug() << "Listen fail";
}


void Connection::OnConnectionRequest()
{
    socket=server.nextPendingConnection();
    QObject::connect(socket,SIGNAL(readyRead()),this,SLOT(OnDataReceived()));
    //QObject::connect(conn,SIGNAL(disconnected()),this,SLOT(OnDisconnected()));
}


void Connection::OnDataReceived()
{
    if (socket==NULL)
        return;
    QByteArray recv=socket->readAll();
    QString recvmsg=recv;
    qDebug() << "Data " << recvmsg;

    QString msg= recvmsg; // issue #1

    while (msg!="0"){    //Read all Tags

    if(util.GetXmlTag(msg) == "fpga") //issue #2 write this for all xml_msg;
    {
           QString data = util.GetXmlStr(msg,"fpga");
           if(util.GetXmlTag(data) == "motor_speed_platform")
               int a = 0;
                //emit send_data_fpga("motor_speed_platform", util.GetXmlInt(data,"motor_speed_platform"));
    }

    // issue #1 remove the last read Tag
}
}

void Connection::OnDisconnected()
{
    if (socket==NULL)
        return;
    qDebug() << "Client disconnected. Timer stopped";
    emit AddToLogAlarm("Info: Cliente desconectado de la red, timer detenido <Clase SocketServidorTCP>",1);

    socket->close();
    socket->deleteLater();
    socket=NULL;
}


void Connection::OnSendData(QString txt)
{
    if (socket==NULL)
        return;
    socket->write(txt.toLatin1());
    //qDebug() << "Sent:" << txt;
}


