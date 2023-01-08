#include "MotorDriver.h"

#define BAUDRATE_ESP32 115200

void MotorDriver::SendCmd2Driver()
{
    if(!serial.open(QSerialPort::ReadWrite)) return;

    else{
        serial.write(snd.toLatin1());
    }
}

void MotorDriver::OnDriverReadyRead()
{
    answ = serial.readAll();
}

MotorDriver::MotorDriver(QObject *parent)
    : QObject{parent}
{
    /* Setting baudrate speed and active COM */
    serial.setBaudRate(BAUDRATE_ESP32);
    serial.setPortName("COM8");

    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,SIGNAL(readyRead()),this,SLOT(OnDriverReadyRead()));
}

void MotorDriver::MoveAtConstantSpeed(QString _motorselect, int _speed_rpm)
{
    QString cmd("#");
    /* First, we have to select the motor to move and add it to the command (0 = motor 1, 1 = motor 2) */
    cmd.append(_motorselect);

    /* Then we add the command to set moving at constant speed */
    cmd.append("5p");

    /* And we send the command to the motor controller via serial port */
    snd = cmd;
    SendCmd2Driver();
}

/* PUBLIC SLOTS */
void MotorDriver::OnNewDataRecieved(const QString &request, const QString &value, const QString &motorselect)
{
    /* Evaluates user request on new data recieved */
    if(request=="stop"){
        //StopMotors();
    }
    else if(request=="move_speed"){
        bool ok; int speed_rpm = value.toInt(&ok);

        if(!ok) return;
        else MoveAtConstantSpeed(motorselect,speed_rpm);
    }
}

