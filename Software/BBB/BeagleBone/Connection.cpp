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


    QXmlStreamReader xmlReader(recvmsg);
    while (!xmlReader.atEnd() && !xmlReader.hasError())
    {
        xmlReader.readNext();

        if (xmlReader.name() == "motor_drive")
        {
            QString child_msg = xmlReader.readElementText();
            qDebug() << "motor_drive: " <<child_msg;
            QXmlStreamReader xmlReaderChild(child_msg);
            while (!xmlReaderChild.atEnd() && !xmlReaderChild.hasError())
            {
                // Read Data
                 xmlReaderChild.readNext();
                 if (xmlReaderChild.name() == "motor_speed_left")
                 {
                     emit SendDataMotor("motor_speed_left",xmlReader.readElementText());
                 }
                 if (xmlReaderChild.name() == "motor_speed_right")
                 {
                    emit SendDataMotor("motor_speed_right",xmlReader.readElementText());
                 }
            }
            continue;
        }

        if (xmlReader.name() == "esp32_top")
        {
            QString child_msg = xmlReader.readElementText();
            qDebug() << "motor_drive: " <<child_msg;
            QXmlStreamReader xmlReader(child_msg);
            continue;
        }

        if (xmlReader.name() == "esp32_front")
        {
            QString child_msg = xmlReader.readElementText();
            qDebug() << "motor_drive: " <<child_msg;
            QXmlStreamReader xmlReader(child_msg);
            continue;
        }

        if (xmlReader.name() == "fpga")
        {
            QString child_msg = xmlReader.readElementText();
            qDebug() << "motor_drive: " <<child_msg;
            QXmlStreamReader xmlReader(child_msg);
            continue;
        }

        if (xmlReader.name() == "beaglebone")
        {
            QString child_msg = xmlReader.readElementText();
            qDebug() << "motor_drive: " <<child_msg;
            QXmlStreamReader xmlReader(child_msg);
            continue;
        }
    }
}

/*

    QString msg= recvmsg;

    while (msg!="0"){    //Read all Tags
        if(util.GetXmlTag(msg) == "fpga") //issue #2 write this for all xml_msg;
        {
               QString data = util.GetXmlStr(msg,"fpga");
               if(util.GetXmlTag(data) == "motor_speed_platform")
                   int a = 0;
                    //emit send_data_fpga("motor_speed_platform", util.GetXmlInt(data,"motor_speed_platform"));

    }
}
*/

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


