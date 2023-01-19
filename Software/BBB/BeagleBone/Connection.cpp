#include "Connection.h"

/*
Connection::Connection(QObject *parent) : QObject(parent)
{

}
*/

Connection::Connection(Data &myDataadrs) : myData(myDataadrs)
{
    socket=NULL;
    QObject::connect(&server,SIGNAL(newConnection()),this,SLOT(OnConnectionRequest()));

    bool ok=server.listen(QHostAddress::Any,5000);
    if (ok)
       qDebug() << "Listen PC ok";
    else
       qDebug() << "Listen fail";
}

void Connection::OnConnectionRequest()
{
    ClientInfo cli;

    cli.socket = server.nextPendingConnection();
    cli.ip=cli.socket->peerAddress();
    int iClient=cliVector.size();
    for (iClient=0;iClient<cliVector.size();iClient++)
    {
          if (cliVector[iClient].ip==cli.ip)
          {
              cliVector[iClient].socket = cli.socket;
              connect(cliVector[iClient].socket,SIGNAL(readyRead()),this,SLOT(OnDataReceived()));
              connect(cliVector[iClient].socket,SIGNAL(disconnected()),this,SLOT(OnDisconnected()));
              break;
          }


    }
    if (iClient >= cliVector.size() ) // Not found in the previous loop: append
    {
        cliVector.append(cli);
        connect(cliVector[iClient].socket,SIGNAL(readyRead()),this,SLOT(OnDataReceived()));
        connect(cliVector[iClient].socket,SIGNAL(disconnected()),this,SLOT(OnDisconnected()));

        qDebug() << "New Connection \n";
    }
    QString msg = "New Connection from Client: "+ cli.ip.toString();
    emit AddToLog(msg);

    // anwser when conected
    static int counter=0;
    OnSendData(QString("hello from BBB count=%1!\n").arg(counter++));

}


void Connection::OnDataReceived()
{

    QTcpSocket* from=(QTcpSocket*) sender();

    int iClient;

    for (iClient=0;iClient<cliVector.size();iClient++)
    {

      if (cliVector[iClient].socket==from)
            break;
    }
    if (iClient>=cliVector.size())
        return; // Not in the list
    // Now read from cliVector[iClient], store in cliVector[iClient].name if name is present, ... , etc.
    QByteArray recv=cliVector[iClient].socket->readAll();
    QString recvmsg=recv;
    qDebug() << "Data: " << recvmsg;




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

    if(recvmsg.contains("trajectory", Qt::CaseInsensitive))
    {
        QString trajectory = util.GetXmlStr(recvmsg, "trajectory");
        QString joy_x, joy_y;
        if(trajectory.contains("joy_x"))
        {
            joy_x = util.GetXmlStr(trajectory, "joy_x");
            qDebug() << "joy_x: " << joy_x;

            myData.trajectory_data.joy_x = joy_x;
        }
        if(trajectory.contains("joy_y"))
        {
            joy_y = util.GetXmlStr(trajectory, "joy_y");
            qDebug() << "joy_y: " << joy_y;
            myData.trajectory_data.joy_x = joy_x;
        }
        emit SendDataTrajectory(joy_x, joy_y);
    }




    if(recvmsg.contains("esp32_top", Qt::CaseInsensitive))
    {
        QString esp_top = util.GetXmlStr(recvmsg, "esp32_top");
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
        if(beaglebone.contains("broadcast_time"))
        {
            QString broadcast_time = util.GetXmlStr(beaglebone,"broadcast_time");
            qDebug() << "boradcast_time: " << broadcast_time;
            myData.beaglebone_data.broadcast_time = broadcast_time;

        }
        if(beaglebone.contains("controller_time"))
        {
            QString controller_time = util.GetXmlStr(beaglebone,"controller_time");
            qDebug() << "temperatur: " << controller_time;
            myData.beaglebone_data.controller_time = controller_time;

        }
        if(beaglebone.contains("sensor_time"))
        {
            QString sensor_time = util.GetXmlStr(beaglebone,"sensor_time");
            qDebug() << "temperatur: " << sensor_time;
            myData.beaglebone_data.sensor_time = sensor_time;

        }
        if(beaglebone.contains("log_time"))
        {
            QString log_time = util.GetXmlStr(beaglebone,"log_time");
            qDebug() << "log_time: " << log_time;
            myData.beaglebone_data.log_time = log_time;

        }
        if(beaglebone.contains("temperatur"))
        {
            QString temperatur = util.GetXmlStr(beaglebone,"temperatur");
            qDebug() << "temperatur: " << temperatur;
            // emit SendDataBBB(); // we dont need that here because its allready in the BBB
            myData.beaglebone_data.temperatur = temperatur;

        }
        // More Functions like that here
    }

}

void Connection::OnDisconnected()
{
    qDebug() << "onDisconnected()"<< Qt::endl;
    QTcpSocket* from =(QTcpSocket*) sender();

      int iClient;

      for (iClient=0;iClient<cliVector.size();iClient++)
       {

          if (cliVector[iClient].socket==from)
                break;
       }

       if (iClient>=cliVector.size())
            return; // Not in the list

        }
        if(beaglebone.contains("ultrasound_right"))
        {
            QString ultrasound_right = util.GetXmlStr(beaglebone,"ultrasound_right");
            qDebug() << "ultrasound_right: " << ultrasound_right;
            myData.beaglebone_data.ultrasound_right = ultrasound_right;

        }
        if(beaglebone.contains("ultrasound_left"))
        {
            QString ultrasound_left = util.GetXmlStr(beaglebone,"ultrasound_left");
            qDebug() << "ultrasound_left: " << ultrasound_left;
            myData.beaglebone_data.ultrasound_left = ultrasound_left;

        }
        if(beaglebone.contains("room_light"))
        {
            QString room_light = util.GetXmlStr(beaglebone,"room_light");
            qDebug() << "room_light: " << room_light;
            myData.beaglebone_data.room_light = room_light;
        }
        if(beaglebone.contains("room_name"))
        {
            QString room_name = util.GetXmlStr(beaglebone,"room_name");
            qDebug() << "room_name: " << room_name;
            myData.beaglebone_data.room_name = room_name;
        }
        if(myData.beaglebone_data.room_light.toInt() == 1)
            emit AddToLog("Room_light turned on in room"+myData.beaglebone_data.room_name);
        else
            emit AddToLog("Room_light turned off in room"+myData.beaglebone_data.room_name);
   }
}


void Connection::OnSendData(QString txt)
{
    int iClient;
    for (iClient=0;iClient<cliVector.size();iClient++)
        {
            /*
              if (cliVector[iClient].socket!=nullptr && cliVecto´r[iClient].socket->state()==QAbstractSocket::ConnectedState && (destination="all" || destination==cliVector[iClient].name)  )
              {
                      cliVector[iClient].socket->write(txt.toLatin1());
              }
              */
        if (cliVector[iClient].socket!=nullptr)
        {
                cliVector[iClient].socket->write(txt.toLatin1());
                cliVector[iClient].socket->flush();
                QTextStream qtOut(stdout);
                qtOut << "Sent:" << txt << "to :"<< cliVector[iClient].ip.toString()<<Qt::endl;
                qtOut.flush();
    }
    }
}

