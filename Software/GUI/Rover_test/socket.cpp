#include "socket.h"

#include <QThread>

Socket::Socket(QObject *parent) :
    QObject(parent)
{

}


bool Socket::Test(QHostAddress address, quint16 port)
{
    socket = new QTcpSocket(this);
    connect(socket, SIGNAL(connected()), this, SLOT(OnConnected()));
    connect(socket, SIGNAL(disconnected()), this, SLOT(OnDisconnected()));
    connect(socket, SIGNAL(readyRead()), this, SLOT(onDataReceived()));
    connect(socket, SIGNAL(bytesWritten(qint64)), this, SLOT(OnBytesWritten(qint64)));

    qDebug() << "Connecting,..";

    //socket->connectToHost("bogotobogo.com", 80);
    //socket->connectToHost(address,port); //address: 192.168.100.102; port:5000
    //socket->connectToHost("192.168.100.102",5000);    // ROVER2122
    socket->connectToHost("192.168.100.23",5000);       // ROVER_AP
    //socket->connectToHost("192.168.100.103",5000);       // ROVER_AP Chris Laptop
    //socket->connectToHost("192.168.100.23",5000);       // rover

  if(!socket->waitForConnected(2000))
   {
        qDebug() << "Error:" << socket->errorString();
        return 0;
   }
   else
   {
        return 1;
   }
}

void Socket::sendmsg(QString txt)
{
    if(connectedBool)
    {
        socket->write(txt.toLatin1());
        qDebug() << "msg sent!" << txt;
    }
    else
        qDebug() << "tried to Send Msg but no connection" << txt;

}

void Socket::OnConnected()
{
    connectedBool = true;
    qDebug() << "Connected! Methode";
    emit BBBconnected();
}



void Socket::OnDisconnected()
{
    connectedBool = false;
    qDebug() << "Disconnected from BBB!";
    emit BBBdisconnected();
}

void Socket::OnBytesWritten(qint64 bytes)
{
    qDebug() << "We wrote: " << bytes;
}


void Socket::onDataReceived()
{
    QByteArray recv = socket->readAll();
    QString recvmsg = recv;
    qDebug() << "Data: " << recvmsg;

    if(recvmsg.contains("log", Qt::CaseInsensitive))
    {
        QString logFile = util.GetXmlStr(recvmsg, "log");
            qDebug() << "log: " << logFile;
            emit newLogFile(logFile);

        // For each diffrent part here like that here
    }

    // ADD FOR ALL POSSIBLE CHANGES IN CONFIG!!

//    if(recvmsg.contains("LOGFILE", Qt::CaseInsensitive))
//    {
//        QString data = util.GetXmlStr(recvmsg, "LOGFILE");
//            qDebug() << "log: " << logFile;
//            emit newLogfile(logFile);
//    }
}
