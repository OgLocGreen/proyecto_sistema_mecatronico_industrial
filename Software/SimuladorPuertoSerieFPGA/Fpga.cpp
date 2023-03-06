#include "Fpga.h"
#include <QObject>
#include <QByteArray>
#include <QDebug>
#include <QVariant>

#define BAUDRATE 115200
#define COMPORT "COM5"

void Fpga::SendDataRS232()
{
    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("Connection failed");
        return;
    }

    else{
        serial.write(snd);
    }

}

Fpga::Fpga(QObject *parent) /*CONSTRUCTOR*/
    : QObject{parent}
{
    /* Setting baudrate speed and active COM */
    serial.setBaudRate(BAUDRATE);
    serial.setPortName(COMPORT);

    /* Connecting data reading slot, on serial data recieving, do sthg */
    QObject::connect(&serial,&QIODevice::readyRead,this,&Fpga::OnFPGAReadyRead);

    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("No conectado al puerto serie de FPGA");
        return;
    }

    else{
        qDebug() << QString("Conectado correctamente al puerto serie RS232 - ") + QString(COMPORT) + QString(BAUDRATE);
    }

    snd.resize(1);
    qDebug() << snd.size();

    serial.close();
}

/* PRIVATE SLOTS */
void Fpga::OnFPGAReadyRead()
{
    QByteArray datas = serial.readAll();
    qDebug() << datas;
}

/* PUBLIC SLOTS */
void Fpga::OnDataRecievedFromBBB(QString cmd) /* recieves data from BBB */
{    
    if(cmd == "leds on"){
        snd[0] = 0x00;
    }
    else if(cmd == "leds off"){
        snd[0] = 0xFF;
    }
    else{
        qDebug() << "The command does not exist";
    }

    SendDataRS232();
}

