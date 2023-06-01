#include "MotorDriver.h"
#include <QDebug>
#include <QLocale>

#define MAX_SPEED 600
#define BAUDRATE 115200
#define COMPORT "COM10"

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
        if (serial.waitForReadyRead(100))
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
        QLocale cLocale(QLocale::German);
        float _speed_prcnt_float = cLocale.toFloat(_speed_prcnt)/100.0; /* conversion to float */
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
    serial.setPortName(COMPORT);
    serial.open(QSerialPort::ReadWrite);

    if(serial.isOpen()) qDebug() << QString("Conectado correctamente al puerto serie RS485 - ") + QString(COMPORT) + " - " + QString::number(BAUDRATE);
    else qDebug() << QString("Conectado correctamente al puerto serie RS485 - ");

    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,&QIODevice::readyRead,this,&MotorDriver::OnDriverReadyRead);

    SendCmd2Driver("#"+idMotorRight+"p5"); /* preset all motors for speed control */
    SendCmd2Driver("#"+idMotorLeft+"p5"); /* preset all motors for speed control */

    SendCmd2Driver("#"+idMotorRight+"b2364"); /* preset all motors with an specified acceleration ramp */
    SendCmd2Driver("#"+idMotorLeft+"b2364"); /* preset all motors with an specified acceleration ramp */

    SendCmd2Driver("#"+idMotorRight+":ramp_mode=2"); /* preset all motors with an specified acceleration ramp */
    SendCmd2Driver("#"+idMotorLeft+":ramp_mode=2"); /* preset all motors with an specified acceleration ramp */

    SendCmd2Driver("#"+idMotorRight+"i70"); /* preset max current */
    SendCmd2Driver("#"+idMotorLeft+"i70"); /* preset max current */

    SendCmd2Driver("#"+idMotorRight+"S1"); /* set stop motors */
    SendCmd2Driver("#"+idMotorLeft+"S1"); /* set stop motors */
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
    /* unit transform and buffering */
    QString right_motor_speed_Hz_NOW = PercentToHzSpeed(right_motor_speed_prcnt);
    QString left_motor_speed_Hz_NOW = PercentToHzSpeed(left_motor_speed_prcnt);

    /* Start motor 1 with settled speed */
    SendCmd2Driver("#"+idMotorRight+"A");
    /* Start motor 2 with settled speed */
    SendCmd2Driver("#"+idMotorLeft+"A");

    if(right_motor_speed_Hz_NOW!=right_motor_speed_Hz){

        right_motor_speed_Hz = right_motor_speed_Hz_NOW;

        /* Setting direction */
        /* d = 0 -> left direction || d = 1 -> right direction */
        if(right_motor_speed_Hz.startsWith("-")){
            SendCmd2Driver("#"+idMotorRight+"d1");
        }
        else{
            SendCmd2Driver("#"+idMotorRight+"d0");
        }

        /* Setting speed */
        if(right_motor_speed_Hz=="0"){
            /*Stops if speed = 0*/
            SendCmd2Driver("#"+idMotorRight+"S1");
        }
        else{
            SendCmd2Driver("#"+idMotorRight+"o"+right_motor_speed_Hz.remove("-"));
        }

    }

    if(left_motor_speed_Hz_NOW!=left_motor_speed_Hz){

        left_motor_speed_Hz = left_motor_speed_Hz_NOW;

        /* Setting direction */
        /* d = 0 -> left direction || d = 1 -> right direction */
        if(left_motor_speed_Hz.startsWith("-")){
            SendCmd2Driver("#"+idMotorLeft+"d0");
        }
        else{
            SendCmd2Driver("#"+idMotorLeft+"d1");
        }
        /* Setting speed */
        if(left_motor_speed_Hz=="0"){
            SendCmd2Driver("#"+idMotorLeft+"S1");
        }
        else{
            /* Set speed */
            SendCmd2Driver("#"+idMotorLeft+"o"+left_motor_speed_Hz.remove("-"));
        }
    }
}
//}

