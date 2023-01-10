#include "MotorDriver.h"
#include <QDebug>

#define BAUDRATE_ESP32 115200

void MotorDriver::SendCmd2Driver()
{
    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("No conectado al puerto serie");
        return;
    }

    else{
        snd.append("\r");
        serial.write(snd.toLatin1());
        serial.waitForReadyRead(100);
        qDebug() << snd + "---" + answ;
    }

    serial.close();
}

/* sending cmd manually constructed */
void MotorDriver::SendCmd2Driver(QString _snd_manual)
{
    snd = _snd_manual;

    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("No conectado al puerto serie");
        return;
    }

    else{
        snd.append("\r");
        serial.write(snd.toLatin1());
        serial.waitForReadyRead(100);
        qDebug() << snd + "---" + answ;
    }

    serial.close();
}

QString MotorDriver::ReadAnswFromDriver()
{
    return answ;
}

void MotorDriver::OnDriverReadyRead()
{
    answ = QString(serial.readAll());
}

MotorDriver::MotorDriver(QObject *parent)
    : QObject{parent}
{
    /* Setting baudrate speed and active COM */
    serial.setBaudRate(BAUDRATE_ESP32);
    serial.setPortName("COM14");

    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,&QIODevice::readyRead,this,&MotorDriver::OnDriverReadyRead);
}

void MotorDriver::MoveStraightAtConstantSpeed(QString _motorselect, int _speed_hz){

    QString cmd("#");
    /* First, we have to select the motor to move and add it to the command (0 = motor 1, 1 = motor 2) */
    cmd.append(_motorselect);

    /* Then we add the command to set moving at constant speed */
    cmd.append("p5");

    /* And we send the command to the motor controller via serial port */
    snd = cmd;
    SendCmd2Driver();

    snd = "#"+ _motorselect +"o" + QString::number(_speed_hz);
    SendCmd2Driver();

    snd = "#"+ _motorselect +"A";
    SendCmd2Driver();
}

void MotorDriver::StopMotor(QString _motorselect)
{
    QString cmd("#");
    /* First, we have to select the motor to move and add it to the command (0 = motor 1, 1 = motor 2) */
    cmd.append(_motorselect);

    /* Then we add the command to set moving at constant speed */
    cmd.append("S1");

    /* And we send the command to the motor controller via serial port */
    snd = cmd;
    SendCmd2Driver();
}

/* PUBLIC SLOTS */
void MotorDriver::OnNewDataRecieved(const QString &request, const QString &value, const QString &motorselect)
{
    /* Evaluates user request on new data recieved */
    if(request=="stop"){
        StopMotor(motorselect);
    }
    else if(request=="move_speed"){
        bool ok; int speed_hz = value.toInt(&ok);

        if(!ok) return;
        else MoveStraightAtConstantSpeed(motorselect,speed_hz);
    }
}

