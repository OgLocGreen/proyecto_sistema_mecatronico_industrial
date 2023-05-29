#include "Fpga.h"
#include <QObject>
#include <QByteArray>
#include <QDebug>
#include <QVariant>

#define BAUDRATE 9600
#define COMPORT "COM3" // /dev/ttyUSB1

void Fpga::SendDataRS232()
{
//    if(!serial.isOpen()){
    if(!serial.open(QSerialPort::WriteOnly)){
        qDebug() << QString("Connection failed");
        qDebug() << QString(serial.errorString());
        serial.close();
        return;
    }

    else{
        qDebug() << "Sending:" << snd;
        serial.clear();
        serial.write(snd);
        serial.waitForBytesWritten(500);
    }

    serial.close();
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
    QObject::connect(&timerServo,&QTimer::timeout,this,&Fpga::OnTimerServo);

    if(!serial.open(QSerialPort::WriteOnly)){
        qDebug() << QString("No conectado al puerto serie de FPGA");
        serial.close();
        return;
    }

    else{
        qDebug() << QString("Conectado correctamente al puerto serie RS232 - ") + QString(COMPORT) + " - " + QString::number(BAUDRATE);
        snd.clear();
        snd.append((char)0b11000000);
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

    if((enable_cam == "1")&&(!timerServo.isActive())){ /* if timer is not active and recieves enable_servo = 1, activate timerServo */
        timerServo.start(1000); /* Sends new angle on timer */
    }
    else if((enable_cam == "0")&&(timerServo.isActive())){
        timerServo.stop(); /* Stops new angle sending */
    }

    snd[0] = snd[0]|angle_servo;

    SendDataRS232();
}

void Fpga::OnTimerServo(){
    if(directionServo == "1") {
        angle_servo = angle_servo+1;
        if(angle_servo>=31) angle_servo = 31;
    }
    else if(directionServo == "0") {
        angle_servo = angle_servo-1;
        if(angle_servo<=0) angle_servo = 0;
    }
    else {
        angle_servo = angle_servo;
    }
}
