#include <QCoreApplication>

#include "Log.h"
#include "Utility.h"
#include "Connection.h"
#include "ControlAndMeasure.h"
#include "Data.h"
#include "Fpga.h"
#include "MotorDriver.h"
#include "Esp32.h"
#include "Gui.h"
#include "BeagleBone.h"
#include "Trajectory.h"


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Log logger;
    Utility util;


    ControlAndMeasure controller;
    QTimer timerController, timerSensor;
    QTimer timerBroadcastXml, timerBroadcastLog;
    // This also could be written to in the init of the Class as Agument for Constructor;
    logger.setLogPath("./log_file.txt");
    logger.setXmlPath("./xml_file.txt");
    logger.setConfigPath("./config.txt");

    QString xml_data;

    xml_data = logger.readConfigFile();

    Data myData;

    Connection connector(myData);

    if (! myData.readInitAll(xml_data))
    {

        qDebug() <<"Error Reading the Data";

    }

    QString broadcast = myData.makeXml();
    logger.saveXmlFile(broadcast);
    // Here then also the Borad cast to all Devices or we make this after the classes


    // Trajectory
    Trajectory myTrajectory(myData);

    //Esp EspTop;
    Esp32 myEspTop;
    // EspTop myEspTop(esp32_top_data.ip,esp32_top_data.port,esp32_top_data.video,esp32_top_data.video_qulity)

    //Esp EspFront
    Esp32 myEspFront;
    // EspTop myEspTop(esp32_top_data.ip,esp32_top_data.port,esp32_top_data.video,esp32_top_data.video_qulity)

    //Fpga
    Fpga myFpga;

    //MotorDriver
    MotorDriver myMotordriver;

    //Gui
    Gui myGui;

    //BBB
    BeagleBone BBB;

    //Mando
    Esp32 Mando;

    // Start all Timer with the right intervall  // issue #16
    timerBroadcastXml.start(10000);
    timerBroadcastLog.start(10000);
    timerController.start(10000);
    timerSensor.start(10000);

    // Connect Timer and Controll and Sensor Events
    QObject::connect(&timerController, SIGNAL(timeout()),&controller, SLOT(onTimerControll()));
    QObject::connect(&timerSensor, SIGNAL(timeout()),&controller, SLOT(onTimerSensor()));
    QObject::connect(&controller, SIGNAL(AddToLog(QString)),&logger, SLOT(OnAddToLog(QString)));

    // Data
    QObject::connect(&timerBroadcastXml, SIGNAL(timeout()),&myData, SLOT(OnTimer()));
    QObject::connect(&myData, SIGNAL(sendToPC(QString)),&connector, SLOT(OnSendData(QString)));
    //Logger
    QObject::connect(&timerBroadcastLog, SIGNAL(timeout()),&logger, SLOT(onTimer()));
    QObject::connect(&logger, SIGNAL(sendToPC(QString)),&connector, SLOT(OnSendData(QString)));


    //Connector
    QObject::connect(&connector, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));
    QObject::connect(&connector, SIGNAL(SendDataTrajectory(QString, QString)),&myTrajectory,SLOT(OnDataReceived(QString , QString)));

    // Trajectory
    //QObject::connect(&myTrajectory, SIGNAL(SendDataMotor(QString, QString)),&myMotordriver,SLOT(OnDataReceived(QString, QString)));

    //issue #9
    // Fpga
    //QObject::connect(&connector, SIGNAL(SendDatatoFpga(QString, QString)),&myFpga,SLOT(OnDataReceived(QString, QString)));
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
