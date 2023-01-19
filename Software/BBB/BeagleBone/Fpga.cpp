#include "Fpga.h"
#include <QDebug>

#define MAX_SPEED 600

#define BAUDRATE 115200

/* sending cmd manually constructed */
void Fpga::SendCmd2FPGA(QString _snd_manual)
{
    qDebug() << _snd_manual;
    snd.clear();
    snd = _snd_manual;

    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("No conectado al puerto serie de FPGA");
        return;
    }

    else{
        snd.append("\r");

        for(int i=0 ; i<=3 ; i++){ /* try to send command for three times */
            serial.write(snd.toLatin1());
            serial.waitForReadyRead(100);
            qDebug() << snd+"---"+answ;
            if(snd==('#'+answ)) break; /* if echo sounds good, go ahead */
            if(i == 3) qDebug() << "Error: look at the answer - " + answ;
        }

        }

    serial.close();
}

QString Fpga::ReadAnswFromFPGA()
{
    return answ;
}

void Fpga::OnFPGAReadyRead()
{
    answ = QString(serial.readAll());
}

Fpga::Fpga(QObject *parent) /*CONSTRUCTOR*/
    : QObject{parent}
{
    /* Setting baudrate speed and active COM */
    serial.setBaudRate(BAUDRATE);
    serial.setPortName("COM14");

    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,&QIODevice::readyRead,this,&Fpga::OnFPGAReadyRead);

    snd.clear(); answ.clear();
    snd.append("1111");
    SendCmd2FPGA(snd); /* preset all motors for speed control */

}

/* PUBLIC SLOTS */
void Fpga::OnDataRecieved(QString direction_elev,QString enable_elev, QString enable_cam,QString direction_cam,QString enable_fast) /* recieves data from BBB */ /* recieves data from BBB */
{
    QString cmd;

    if(enable_fast.toInt())
    {
        cmd.append(direction_elev.toInt());
    }

    cmd = "1110";

    SendCmd2FPGA(cmd);
}


//}

