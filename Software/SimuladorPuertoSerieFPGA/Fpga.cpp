#include "Fpga.h"
#include <QObject>
#include <QByteArray>
#include <QDebug>
#include <QVariant>
#include <QLocale>

#define BAUDRATE 9600
#define COMPORT "COM3" // /dev/ttyUSB1

void Fpga::SendDataRS232()
{
    if(!serial.isOpen()){
        qDebug() << QString("Connection failed");
        qDebug() << QString(serial.errorString());
        return;
    }

    else{
        qDebug() << "Sending:" << snd;
        serial.clear();
        serial.write(snd);
        serial.waitForBytesWritten(500);
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

    /* Connecting timer slot, for servo angle changing */
    serial.open(QSerialPort::WriteOnly);

    if(!serial.isOpen()){
        qDebug() << QString("No conectado al puerto serie de FPGA");
    }

    else{
        qDebug() << QString("Conectado correctamente al puerto serie RS232 - ") + QString(COMPORT) + " - " + QString::number(BAUDRATE);
        snd.clear();
        snd.append((char)0b11000000); // tijera abajo y desactivada (suupestamente)
        angle_servo = 20;
        snd[0] = snd[0]|angle_servo;

        SendDataRS232();
    }
}

/* PRIVATE SLOTS */
void Fpga::OnFPGAReadyRead()
{
    QByteArray datas = serial.readAll();
    qDebug() << datas;
}

/* PUBLIC SLOTS */
void Fpga::OnDataRecievedFromBBB(QString direction_elev, QString enable_elev, QString enable_cam, QString direction_cam, QString cam_value, QString enable_fast) /* recieves data from BBB */
{

    /* XML Structure recieved */
    /* <fpga>
        <direction_elev>1</direction_elev>
        <enable_elev>1</enable_elev>
        <enable_cam>1</enable_cam>
        <direction_cam>1</direction_cam>
        <cam_value>1</cam_value>
        <enable_fast>1</enable_fast>
    </fpga> */

    QString msg;
    msg = direction_elev+enable_elev;

    directionServo = direction_cam;

    if(msg == "00"){
        snd.clear();
        snd.append((char)0b00000000);
    }
    else if (msg == "01"){
        snd.clear();
        snd.append((char)0b01000000);
    }
    else if (msg == "10"){
        snd.clear();
        snd.append((char)0b10000000);
    }
    else if (msg == "11"){
        snd.clear();
        snd.append((char)0b11000000);
    }
    else {
        snd.clear();
        snd.append((char)0b11000000);
    }

    QLocale cLocale(QLocale::German);
    angle_servo = cLocale.toInt(cam_value);

    snd[0] = snd[0]|angle_servo;

    SendDataRS232();
}
