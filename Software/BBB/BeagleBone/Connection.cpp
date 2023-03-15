#include "Connection.h"

// constructor for the conection class with the right adress
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

// methode when a client wants to connect
void Connection::OnConnectionRequest()
{
    // mange the client request and get the adress
    ClientInfo cli;
    cli.socket = server.nextPendingConnection();
    cli.ip=cli.socket->peerAddress();
    int iClient=cliVector.size();
    // add the requesting client to the list
    for (iClient=0;iClient<cliVector.size();iClient++)
    {
        // check if the client is already in the list
        // if yes overwrite the old conection
        if (cliVector[iClient].ip==cli.ip)
        {
            cliVector[iClient].socket = cli.socket;
            connect(cliVector[iClient].socket,SIGNAL(readyRead()),this,SLOT(OnDataReceived()));
            connect(cliVector[iClient].socket,SIGNAL(disconnected()),this,SLOT(OnDisconnected()));
            break;
        }
    }
    // Not found in the previous loop: append  ##issue 66
    if (iClient >= cliVector.size() )
    {
        cliVector.append(cli);
        connect(cliVector[iClient].socket,SIGNAL(readyRead()),this,SLOT(OnDataReceived()));
        connect(cliVector[iClient].socket,SIGNAL(disconnected()),this,SLOT(OnDisconnected()));

        qDebug() << "New Connection \n";
    }
    // add to the log msg
    QString msg = "New Connection from Client: "+ cli.ip.toString();
    emit AddToLog(msg);

    // anwser when conected
    static int counter=0;
    OnSendData(QString("hello from BBB count=%1!\n").arg(counter++));

}

// methode for reciving data
void Connection::OnDataReceived()
{
    // check who send the data
    QTcpSocket* from=(QTcpSocket*) sender();
    int iClient;
    for (iClient=0;iClient<cliVector.size();iClient++)
    {

      if (cliVector[iClient].socket==from)
            break;
    }
    if (iClient>=cliVector.size())
        return;
    // get the send msg
    QByteArray recv=cliVector[iClient].socket->readAll();
    QString recvmsg=recv;
    qDebug() << "Data: " << recvmsg;

    // read the data out of the message and write it in the write data class (data struct)
    // also if needed a log msg will be written
    // also if needed the received data will be send to other class
    if(recvmsg.contains("motor_driver", Qt::CaseInsensitive))
    {
        QString moterDriver = util.GetXmlStr(recvmsg, "motor_driver");
        if(moterDriver.contains("motor_speed_left"))
        {
            QString motor_speed_left = util.GetXmlStr(moterDriver, "motor_speed_left");
            qDebug() << "motor_speed_left: " << motor_speed_left;
            myData.motor_driver_data.motor_speed_left = motor_speed_left;
        }
        if(moterDriver.contains("motor_speed_right"))
        {
            QString motor_speed_right = util.GetXmlStr(moterDriver, "motor_speed_right");
            qDebug() << "motor_speed_right: " << motor_speed_right;
            myData.motor_driver_data.motor_speed_right = motor_speed_right;
        }
    }


    if(recvmsg.contains("trajectory", Qt::CaseInsensitive))
    {
        QString trajectory = util.GetXmlStr(recvmsg, "trajectory");
        QString joy_x, joy_y, vel_max;
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
        if(trajectory.contains("vel_max"))
        {
            vel_max = util.GetXmlStr(trajectory, "vel_max");
            qDebug() << "vel_max: " << vel_max;
            myData.trajectory_data.vel_max = vel_max;
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
            if(pulsar.toInt() == 1)
                emit AddToLog("Pulsar Activated");
            else
                emit AddToLog("Pulsar Deactivated");
            myData.esp32_top_data.pulsar = pulsar;
        }
        if(esp_top.contains("ip"))
        {
            QString ip = util.GetXmlStr(esp_top, "ip");
            qDebug() << "ip: " << ip;
            myData.esp32_top_data.ip = ip;
        }
        if(esp_top.contains("video"))
        {
            QString video = util.GetXmlStr(esp_top, "video");
            qDebug() << "video: " << video;
            myData.esp32_top_data.video = video;
        }
    }


    if(recvmsg.contains("esp32_front", Qt::CaseInsensitive))
    {
        QString esp_front = util.GetXmlStr(recvmsg, "esp32_front");
        if(esp_front.contains("ip"))
        {
            QString ip = util.GetXmlStr(esp_front, "ip");
            qDebug() << "ip: " << ip;
            myData.esp32_top_data.ip = ip;
        }
        if(esp_front.contains("video"))
        {
            QString video = util.GetXmlStr(esp_front, "video");
            qDebug() << "video: " << video;
            myData.esp32_top_data.video = video;
        }
    }


    if(recvmsg.contains("fpga", Qt::CaseInsensitive))
    {
        QString fpga = util.GetXmlStr(recvmsg, "fpga");
        if(fpga.contains("direction_elev"))
        {
            QString direction_elev = util.GetXmlStr(fpga, "direction_elev");
            qDebug() << "direction_elev: " << direction_elev;
            myData.fpga_data.direction_elev = direction_elev;
        }
        if(fpga.contains("frecuency_switch"))
        {
            QString frecuency_switch = util.GetXmlStr(fpga, "frecuency_switch");
            qDebug() << "frecuency_switch: " << frecuency_switch;
            myData.fpga_data.frecuency_switch = frecuency_switch;
        }
        if(fpga.contains("enable_elev"))
        {
            QString enable_elev = util.GetXmlStr(fpga, "enable_elev");
            qDebug() << "enable_elev: " << enable_elev;
            myData.fpga_data.enable_elev = enable_elev;
        }
        if(fpga.contains("enable_cam"))
        {
            QString enable_cam = util.GetXmlStr(fpga, "enable_cam");
            qDebug() << "enable_cam: " << enable_cam;
            myData.fpga_data.enable_cam = enable_cam;
        }
        if(fpga.contains("direction_cam"))
        {
            QString direction_cam = util.GetXmlStr(fpga, "direction_cam");
            qDebug() << "direction_cam: " << direction_cam;
            myData.fpga_data.direction_cam = direction_cam;
        }
        emit SendDataFpga(myData.fpga_data.direction_elev,
                          myData.fpga_data.frecuency_switch,
                          myData.fpga_data.enable_elev,
                          myData.fpga_data.enable_cam,
                          myData.fpga_data.direction_cam);
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
            myData.beaglebone_data.temperatur = temperatur;

        }
        if(beaglebone.contains("battery"))
        {
            QString battery = util.GetXmlStr(beaglebone,"battery");
            qDebug() << "battery: " << battery;
            myData.beaglebone_data.battery = battery;

        }
        if(beaglebone.contains("led_light"))
        {
            QString led_light = util.GetXmlStr(beaglebone,"led_light");
            qDebug() << "led_light: " << led_light;
            if(led_light.toInt() == 1)
                emit AddToLog("Led Activated");
            else
                emit AddToLog("Led Deactivated");
            myData.beaglebone_data.led_light = led_light;

        }
        if(beaglebone.contains("ventilator"))
        {
            QString ventilator = util.GetXmlStr(beaglebone,"ventilator");
            qDebug() << "ventilator: " << ventilator;
            if(ventilator.toInt() == 1)
                emit AddToLog("Ventilator Activated");
            else
                emit AddToLog("Ventilator Deactivated");
            myData.beaglebone_data.ventilator = ventilator;

        }
        if(beaglebone.contains("speaker"))
        {
            QString speaker = util.GetXmlStr(beaglebone,"speaker");
            qDebug() << "speaker: " << speaker;
            if(speaker.toInt() == 1)
                emit AddToLog("Speaker Activated");
            else
                emit AddToLog("Speaker Deactivated");
            myData.beaglebone_data.speaker = speaker;

        }
        if(beaglebone.contains("zero_pos_low"))
        {
            QString zero_pos_low = util.GetXmlStr(beaglebone,"zero_pos_low");
            qDebug() << "zero_pos_low: " << zero_pos_low;
            myData.beaglebone_data.zero_pos_low = zero_pos_low;

        }
        if(beaglebone.contains("x_pos_momento"))
        {
            QString x_pos_momento = util.GetXmlStr(beaglebone,"x_pos_momento");
            qDebug() << "x_pos_momento: " << x_pos_momento;
            myData.beaglebone_data.x_pos_momento = x_pos_momento;

        }
        if(beaglebone.contains("y_pos_momento"))
        {
            QString y_pos_momento = util.GetXmlStr(beaglebone,"y_pos_momento");
            qDebug() << "speaker: " << y_pos_momento;
            myData.beaglebone_data.y_pos_momento = y_pos_momento;

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


// methode will delete the client that disconnected from the list
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
        return;
    cliVector.remove(iClient);  // remove from the list
    from->deleteLater();  // remove the pointer assigned by nextPendingConnection()
}

// methode for sending data to all Clients
void Connection::OnSendData(QString txt)
{
    int iClient;
    for (iClient=0;iClient<cliVector.size();iClient++)
        {
        // Send to Special Adress
            /*
              if (cliVector[iClient].socket!=nullptr && cliVecto´r[iClient].socket->state()==QAbstractSocket::ConnectedState && (destination="all" || destination==cliVector[iClient].name)  )
              {
                      cliVector[iClient].socket->write(txt.toLatin1());
              }
              */
        // Broadcast to all Cients
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

