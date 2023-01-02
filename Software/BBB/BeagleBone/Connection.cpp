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
            myData.motor_driver_data.motor_speed_left = motor_speed_left;
        }
        if(moterDriver.contains("motor_speed_right"))
        {
            QString motor_speed_right = util.GetXmlStr(moterDriver, "motor_speed_right");
            qDebug() << "motor_speed_right: " << motor_speed_right;
            emit SendDataMotor("motor_speed_right", motor_speed_right);
            myData.motor_driver_data.motor_speed_right = motor_speed_right;
        }
    }
    if(recvmsg.contains("esp32_top_data", Qt::CaseInsensitive))
    {
        QString esp_top = util.GetXmlStr(recvmsg, "esp32_top_data");
        if(esp_top.contains("pulsar"))
        {
            QString pulsar = util.GetXmlStr(esp_top, "pulsar");
            qDebug() << "pulsar: " << pulsar;
            emit SendDataEspTop("pulsar", pulsar);
            myData.esp32_top_data.pulsar = pulsar;
        }
        // For each diffrent part here like that here
    }

    if(recvmsg.contains("esp32_front", Qt::CaseInsensitive))
    {
        QString esp_front = util.GetXmlStr(recvmsg, "esp32_front");
        if(esp_front.contains("pulsar"))
        {
            QString pulsar = util.GetXmlStr(esp_front, "pulsar");
            qDebug() << "pulsar: " << pulsar;
            emit SendDataEspTop("pulsar", pulsar);
            myData.esp32_top_data.pulsar = pulsar;
        }
        // For each diffrent part here like that here
    }

    if(recvmsg.contains("fpga", Qt::CaseInsensitive))
    {
        QString fpga = util.GetXmlStr(recvmsg, "fpga");
        if(fpga.contains("motor_speed_platform"))
        {
            QString motor_speed_platform = util.GetXmlStr(fpga, "motor_speed_platform");
            qDebug() << "motor_speed_platform: " << motor_speed_platform;
            emit SendDataFpga("motor_speed_platform", motor_speed_platform);
            myData.fpga_data.motor_speed_platform = motor_speed_platform;
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
            // emit SendDataBBB(); // we dont need that here because its allready in the BBB
            myData.beaglebone_data.temperatur = temperatur;

        }
        // More Functions like that here
    }


    // Do the Saving of the XML file here;


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


