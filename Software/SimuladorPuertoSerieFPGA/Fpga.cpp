#include "Fpga.h"
#include <QObject>
#include <QByteArray>
#include <QDebug>
#include <QVariant>

#define BAUDRATE 9600
#define COMPORT "COM4"

void Fpga::SendDataRS232()
{
    if(!serial.open(QSerialPort::WriteOnly)){
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
    serial.setDataBits(QSerialPort::Data8);
    serial.setFlowControl(QSerialPort::NoFlowControl);

    /* Connecting data reading slot, on serial data recieving, do sthg */
    //QObject::connect(&serial,&QIODevice::readyRead,this,&Fpga::OnFPGAReadyRead);

    if(!serial.open(QSerialPort::ReadWrite)){
        qDebug() << QString("No conectado al puerto serie de FPGA");
        return;
    }

    else{
        qDebug() << QString("Conectado correctamente al puerto serie RS232 - ") + QString(COMPORT) + " - " + QString::number(BAUDRATE);
    }

//    QString str_prueba('a');

//    while(1){
//        serial.open(QSerialPort::WriteOnly);
//        snd = str_prueba.toLatin1();
//        qDebug() << snd.size();
//        SendDataRS232();
//        serial.close();
//    }
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

    if(cmd == "a"){
        QByteArray instr("a");
        snd.clear();
        snd = instr;
    }
    else if(cmd == "s"){
        QByteArray instr("s");
        snd.clear();
        snd = instr;
    }
    else{
        qDebug() << "The command does not exist or you just want to stop. The machine will stop.";
        QByteArray instr("l");
        snd.clear();
        snd = instr;
    }

    SendDataRS232();
}

