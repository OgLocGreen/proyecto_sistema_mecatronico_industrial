#include <QCoreApplication>

#include "Log.h"
#include "Utility.h"
#include "Connection.h"
#include "Data.h"
#include "MotorDriver.h"
#include "BeagleBone.h"
#include "Trajectory.h"
#include "Fpga.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    // Init Classes
    Log logger;
    Utility util;
    Data myData;
    Connection connector(myData);

    // Init Timer
    QTimer timerController, timerSensor;
    QTimer timerBroadcastXml, timerBroadcastLog;

    // Set Paths
    QString log_path = "./"+QDate::currentDate().toString("dd.MM.yyyy")+ "_log_file.txt";
    logger.setLogPath(log_path);
    logger.setXmlPath("./xml_file.txt");
    logger.setConfigPath(":/rsc/config.txt");

    // read in Data
    QString xml_data;
    xml_data = logger.readConfigFile();

    if (! myData.readInitAll(xml_data))
    {
        qDebug() <<"Error Reading the Data";
    }

    // broadcast xml data
    QString broadcast = myData.makeXml();
    logger.saveXmlFile(broadcast);


    // Here then also the Borad cast to all Devices or we make this after the classes
    // issue #67

    //FPGA
    Fpga myFpga;

    // Trajectory
    Trajectory myTrajectory(myData);

    //MotorDriver
    MotorDriver myMotordriver;

    //BBB
    BeagleBone BBB(myData);
    // Connect Timer and Controll and Sensor Events
    QObject::connect(&timerController, SIGNAL(timeout()),&BBB, SLOT(onTimerControll()));
    QObject::connect(&timerSensor, SIGNAL(timeout()),&BBB, SLOT(onTimerSensor()));
    QObject::connect(&BBB, SIGNAL(AddToLog(QString)),&logger, SLOT(OnAddToLog(QString)));

    // Start all Timer with the right intervall  // issue #16
    timerBroadcastXml.start(myData.beaglebone_data.broadcast_time.toInt());
    timerBroadcastLog.start(myData.beaglebone_data.log_time.toInt());
    timerController.start(myData.beaglebone_data.controller_time.toInt());
    timerSensor.start(myData.beaglebone_data.sensor_time.toInt());

    // Data
    QObject::connect(&timerBroadcastXml, SIGNAL(timeout()),&myData, SLOT(OnTimer()));
    QObject::connect(&myData, SIGNAL(sendToPC(QString)),&connector, SLOT(OnSendData(QString)));
    //Logger
    QObject::connect(&timerBroadcastLog, SIGNAL(timeout()),&logger, SLOT(onTimer()));
    QObject::connect(&logger, SIGNAL(sendToPC(QString)),&connector, SLOT(OnSendData(QString)));


    //Connector
    QObject::connect(&connector, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));
    QObject::connect(&connector, SIGNAL(SendDataTrajectory(QString,QString)),&myTrajectory,SLOT(OnDataReceived(QString,QString)));

    // Trajectory
    //QObject::connect(&myTrajectory, SIGNAL(SendDataMotor(QString, QString)),&myMotordriver,SLOT(OnDataReceived(QString, QString)));

    //Fpga
    QObject::connect(&connector, SIGNAL(SendDataFpga(QString,QString,QString,QString,QString)),&myFpga,SLOT(OnDataRecieved(QString,QString,QString,QString,QString)));
    // QObject::connect(&myFpga, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //Motor Driver
    QObject::connect(&connector,SIGNAL(SendDataMotor(QString, QString)),&myMotordriver,SLOT(OnDataRecieved(QString, QString)));
    QObject::connect(&myTrajectory, SIGNAL(SendDataMotor(QString, QString )),&myMotordriver,SLOT(OnDataRecieved(QString, QString)));


    return a.exec();
}
