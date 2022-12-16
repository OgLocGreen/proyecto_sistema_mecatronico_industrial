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


    if(recvmsg.contains("motor_driver", Qt::CaseInsensitive))
    {
        QString moterDriver = util.GetXmlStr(recvmsg, "motor_driver");
        if(moterDriver.contains("motor_speed_left"))
        {
            QString motor_speed_left = util.GetXmlStr(moterDriver, "motor_speed_left");
            qDebug() << "motor_speed_left: " << motor_speed_left;
            emit SendDataMotor("motor_speed_left", motor_speed_left);
            // emit SaveData(); //issue #22
        }
        if(moterDriver.contains("motor_speed_right"))
        {
            QString motor_speed_right = util.GetXmlStr(moterDriver, "motor_speed_right");
            qDebug() << "motor_speed_right: " << motor_speed_right;
            emit SendDataMotor("motor_speed_right", motor_speed_right);
            // emit SaveData(); //issue #22
        }
    }
    if(recvmsg.contains("esp_top", Qt::CaseInsensitive))
    {
        QString esp_top = util.GetXmlStr(recvmsg, "esp_top");
        if(esp_top.contains("pulsar"))
        {
            QString pulsar = util.GetXmlStr(esp_top, "pulsar");
            qDebug() << "pulsar: " << pulsar;
            emit SendDataEspTop("pulsar", pulsar);
        }
        // For each diffrent part here like that here
    }

    if(recvmsg.contains("esp_front", Qt::CaseInsensitive))
    {
        QString esp_top = util.GetXmlStr(recvmsg, "esp_front");
        if(esp_top.contains("XXX"))
        {
            QString XXX = util.GetXmlStr(esp_top, "XXX");
            qDebug() << "XXX: " << XXX;
            emit SendDataEspFront("XXX", XXX);
        }
        // More Funckitons like that here
    }

    if(recvmsg.contains("fpga", Qt::CaseInsensitive))
    {
        QString fpga = util.GetXmlStr(recvmsg, "fpga");
        if(fpga.contains("motor_speed_platform"))
        {
            QString motor_speed_platform = util.GetXmlStr(fpga, "motor_speed_platform");
            qDebug() << "motor_speed_platform: " << motor_speed_platform;
             emit SendDataFpga("motor_speed_platform", motor_speed_platform);
        }
        // More Funckitons like that here
    }

    if(recvmsg.contains("beaglebone", Qt::CaseInsensitive))
    {
        QString beaglebone = util.GetXmlStr(recvmsg, "beaglebone");
        if(beaglebone.contains("temperatur"))
        {
            QString temperatur = util.GetXmlStr(beaglebone,"temperatur");
            qDebug() << "temperatur: " << temperatur;
            // Hier noch ein Event für DataMsg für BBB;

        }
        // More Funckitons like that here
    }


}

void Connection::OnDisconnected()
{
    if (socket==NULL)
        return;
    qDebug() << "Client disconnected. Timer stopped";

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


