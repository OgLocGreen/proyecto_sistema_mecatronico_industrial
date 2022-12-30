#include <QCoreApplication>

#include "Log.h"
#include "Utility.h"
#include "Connection.h"
#include "ControlAndMeasure.h"
#include "Data.h"

QString GetXmlStr(const QString &textXml, const QString &tagXml1, const QString &tagXml2);

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Log logger;
    Utility util;
    Connection connector;
    QTimer timerBroadcast;
    ControlAndMeasure controller;
    QTimer timerController, timerSensor;

    QString xml_data;
    xml_data = util.ReadXmlFile();

    Data myData;

    myData.motor_driver_data.motor_speed_left = "test";
    //Then Write the xml_configdata to the write things.
    //maybe Read first dann then Initiaz/Constructros with arguments


    //Esp EspTop;
    myData.esp32_top_data = myData.readInitEsp32_top(xml_data);
    // EspTop myEspTop(esp32_top_data.ip,esp32_top_data.port,esp32_top_data.video,esp32_top_data.video_qulity)

    //Esp EspFront
    myData.esp32_front_data = myData.readInitEsp32_front(xml_data);
    // EspTop myEspTop(esp32_top_data.ip,esp32_top_data.port,esp32_top_data.video,esp32_top_data.video_qulity)

    //Fpga
    myData.fpga_data = myData.readInitFpga(xml_data);
    // Fpga myFpga();

    //MotorDriver
    myData.motor_driver_data = myData.readInitDataMotorDriver(xml_data);

    //Gui
    myData.gui_data = myData.readInitGui(xml_data);

    //BBB
    myData.beaglebone_data = myData.readInitBeaglebone(xml_data);

    //BBB
    myData.mando_data = myData.readInitMando(xml_data);

    // Start all Timer with the right intervall  // issue #16
    timerBroadcast.start(1000);
    timerController.start(1000);
    timerSensor.start(1000);

    // Connect Timer and Controll and Sensor Events
    QObject::connect(&timerController, SIGNAL(timeout()),&controller, SLOT(onTimerControll()));
    QObject::connect(&timerSensor, SIGNAL(timeout()),&controller, SLOT(onTimerSensor()));


    //issue #9
    // Fpga
    // QObject::connect(&connector, SIGNAL(SendDatatoFpga(QString, QString)),&myFpga,SLOT(OnDataReceived(QString, QString)));
    // QObject::connect(&myFpga, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //EspTop
    //QObject::connect(&connector, SIGNAL(SendDataEspTop(QString, float)),&EspTop,SLOT(OnDataReceived(QString, QString)));
    //QObject::connect(&EspTop, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));


    //EspFront
    //QObject::connect(&connector, SIGNAL(SendDataEspFront(QString, QString)),&EspFront,SLOT(OnDataReceived(QString, QString)));
    // QObject::connect(&EspFront, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //Motor
    //QObject::connect(&connector,SIGNAL(SendDataMotor(QString, QString)),&myMotor,SLOT(OnDataReceived(QString, QString)));
    //QObject::connect(&myMotor, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //Broadcast // issue #17
    //QObject::connect(&timerBroadcast,SIGNAL(timeout()),&connector,SLOT(Broadcast(QString,QString)));


    return a.exec();
}


QString GetXmlStr(const QString &textXml, const QString &tagXml1, const QString &tagXml2)
{
    QString ret;
    int istart, iend;
    int indexStart, lengStr;

    istart = textXml.indexOf("<"+tagXml1+">");
    iend = textXml.indexOf("</"+tagXml1+">");
    indexStart = istart+tagXml1.length()+2;
    lengStr = iend - indexStart;
    ret = textXml.mid(indexStart, lengStr);

    istart = ret.indexOf("<"+tagXml2+">");
    iend = ret.indexOf("</"+tagXml2+">");
    indexStart = istart+tagXml2.length()+2;
    lengStr = iend - indexStart;
    ret = ret.mid(indexStart, lengStr);

    return ret;
}
