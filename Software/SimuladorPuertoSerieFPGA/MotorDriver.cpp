#include "MotorDriver.h"
#include <QDebug>

#define MAX_SPEED 600
#define BAUDRATE 115200

void MotorDriver::SendCmd2Driver(QString _snd_manual) /* sending cmd manually constructed */
{
    snd.clear();
    snd = _snd_manual;

    /* If serial port is open, sends the command, else emits an error */
    if(!serial.isOpen()){
        qDebug() << QString("No conectado al puerto serie");
        return;
    }

    else{
        snd.append("\r");
        serial.write(snd.toLatin1());
        if (serial.waitForReadyRead(500))
            answ = QString(serial.readAll());
        else
            answ = "No ANS";
        qDebug() << snd+"---"+answ;
        }
}

QString MotorDriver::ReadAnswFromDriver()
{
    return answ;
}

void MotorDriver::OnDriverReadyRead()
{
//    answ.clear();
//    answ = QString(serial.readAll());
}

QString MotorDriver::PercentToHzSpeed(QString _speed_prcnt)
{
    if(_speed_prcnt!="0"){
        float _speed_prcnt_float = _speed_prcnt.toFloat()/100.0; /* conversion to float */
        float _speed_Hz_float = _speed_prcnt_float*MAX_SPEED; /* conversion from percentage to absolute */
        QString _speed_Hz_str = QString::number(qRound(_speed_Hz_float)); /* conversion from integer to string to command building */
        return _speed_Hz_str;
    }
    else{
        QString _speed_Hz_str = "0";
        return _speed_Hz_str;
    }
}

MotorDriver::MotorDriver(QObject *parent) /*CONSTRUCTOR*/
    : QObject{parent}
{
    /* Setting baudrate speed and active COM */
    serial.setBaudRate(BAUDRATE);
    serial.setPortName("COM6");
    serial.open(QSerialPort::ReadWrite);


    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,&QIODevice::readyRead,this,&MotorDriver::OnDriverReadyRead);

    snd.clear();
    snd.append("#*p5");
    SendCmd2Driver(snd); /* preset all motors for speed control */
    snd.clear();
}

void MotorDriver::StopMotor(QString _motorselect)
{
    QString cmd("#");
    /* First, we have to select the motor to move and add it to the command (2 = motor 1, 3 = motor 2) */
    cmd.append(_motorselect);

    /* Then we add the command to set moving at constant speed */
    cmd.append("S1");

    /* And we send the command to the motor controller via serial port */
    SendCmd2Driver(cmd);
    serial.waitForReadyRead(1000);
}

/* PUBLIC SLOTS */

void MotorDriver::OnNewDataRecieved(const QString &right_motor_speed_prcnt, const QString &left_motor_speed_prcnt) /* recieves data from BBB */
{
    QString cmd;

    /* unit transform and buffering */
    QString right_motor_speed_Hz_NOW = PercentToHzSpeed(right_motor_speed_prcnt);
    QString left_motor_speed_Hz_NOW = PercentToHzSpeed(left_motor_speed_prcnt);

    if(right_motor_speed_Hz_NOW!=right_motor_speed_Hz){

        right_motor_speed_Hz = right_motor_speed_Hz_NOW;

        /* Setting direction */
        /* d = 0 -> left direction || d = 1 -> right direction */
        if(right_motor_speed_Hz.startsWith("-")){
            cmd = "#"+idMotorRight+"d0";
            SendCmd2Driver(cmd);
            cmd.clear();
        }

        else{
            cmd = "#"+idMotorRight+"d1";
            SendCmd2Driver(cmd);
            cmd.clear();
        }

        cmd.clear();

        /* Setting speed */
        if(right_motor_speed_Hz=="0"){
            cmd = "#"+idMotorRight+"S1";
            SendCmd2Driver(cmd);
            cmd.clear();
        }
        else{
            cmd = "#"+idMotorRight+"o"+right_motor_speed_Hz.remove("-");
            SendCmd2Driver(cmd);
            cmd.clear();
            /* Start motor 1 with settled speed */
            cmd = "#"+idMotorRight+"A";
            SendCmd2Driver(cmd);
            cmd.clear();
        }

    }

    if(left_motor_speed_Hz_NOW!=left_motor_speed_Hz){

        left_motor_speed_Hz = left_motor_speed_Hz_NOW;

        /* Setting direction */
        /* d = 0 -> left direction || d = 1 -> right direction */
        if(left_motor_speed_Hz.startsWith("-")){
            cmd = "#"+idMotorLeft+"d1";
            SendCmd2Driver(cmd);
            cmd.clear();
        }
        else{
            cmd = "#"+idMotorLeft+"d0";
            SendCmd2Driver(cmd);
            cmd.clear();
        }
        cmd.clear();
        /* Setting speed */
        if(left_motor_speed_Hz=="0"){
            cmd = "#"+idMotorLeft+"S1";
            SendCmd2Driver(cmd);
            cmd.clear();
        }
        else{
            cmd = "#"+idMotorLeft+"o"+left_motor_speed_Hz.remove("-");
            SendCmd2Driver(cmd);
            cmd.clear();
            /* Start motor 2 with settled speed */
            cmd = "#"+idMotorLeft+"A";
            SendCmd2Driver(cmd);
            cmd.clear();
        }
    }
}
//}

