#include "MotorDriver.h"
#include <QDebug>

#define MAX_SPEED 600

#define BAUDRATE 115200

/* sending cmd manually constructed */
void MotorDriver::SendCmd2Driver(QString _snd_manual)
{
    snd.clear();
    snd = _snd_manual;

    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("No conectado al puerto serie");
        return;
    }

    else{
        snd.append("\r");

        for(int i=0 ; i>=3 ; i++){ /* try to send command for three times */
            serial.write(snd.toLatin1());
            serial.waitForReadyRead(100);
            if(snd==('#'+answ)) break; /* if echo sounds good, go ahead */
            if(i == 3) qDebug() << "Error: look at the answer - " + answ;
        }

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

QString MotorDriver::PercentToHzSpeed(QString _speed_prcnt)
{
    int _speed_prcnt_int = _speed_prcnt.toInt(); /* conversion to integer */
    int _speed_Hz_int = _speed_prcnt_int*MAX_SPEED; /* conversion from percentage to absolute */
    QString _speed_Hz_str = QString::number(_speed_Hz_int); /* conversion from integer to string to command building */
    return _speed_Hz_str;
}

MotorDriver::MotorDriver(QObject *parent) /*CONSTRUCTOR*/
    : QObject{parent}
{
    /* Setting baudrate speed and active COM */
    serial.setBaudRate(BAUDRATE);
    serial.setPortName("COM14");

    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,&QIODevice::readyRead,this,&MotorDriver::OnDriverReadyRead);

    snd.clear(); answ.clear();
    snd.append("#*p5");
    SendCmd2Driver(snd); /* preset all motors for speed control */

}

void MotorDriver::StopMotor(QString _motorselect)
{
    QString cmd("#");
    /* First, we have to select the motor to move and add it to the command (0 = motor 1, 1 = motor 2) */
    cmd.append(_motorselect);

    /* Then we add the command to set moving at constant speed */
    cmd.append("S1");

    /* And we send the command to the motor controller via serial port */
    SendCmd2Driver(cmd);
}

/* PUBLIC SLOTS */

void MotorDriver::OnNewDataRecieved(const QString &right_motor_speed_prcnt, const QString &left_motor_speed_prcnt) /* recieves data from BBB */
{
    QString cmd;

    /* unit transform and buffering */
    right_motor_speed_Hz = PercentToHzSpeed(right_motor_speed_prcnt);
    left_motor_speed_Hz = PercentToHzSpeed(left_motor_speed_prcnt);

    /*MOTORDRIVER 1 = RIGHT, MOTORDRIVER 2 = LEFT*/

    /* Setting direction */
    /* d = 0 -> left direction || d = 1 -> right direction */
    if(right_motor_speed_Hz.startsWith("-")){
        cmd = "#1d0";
        SendCmd2Driver(cmd);
    }

    cmd.clear();
    if(left_motor_speed_Hz.startsWith("-")){
        cmd = "#2d0";
        SendCmd2Driver(cmd);
    }

    cmd.clear();

    /* Setting speed */
    cmd = "#1o"+right_motor_speed_Hz.remove("-");
    SendCmd2Driver(cmd);
    cmd.clear();

    cmd = "#2o"+left_motor_speed_Hz.remove("-");
    SendCmd2Driver(cmd);
    cmd.clear();

    /* Start All motors with settled speed */
    cmd = "#*A";
    SendCmd2Driver(cmd);
}


//}

