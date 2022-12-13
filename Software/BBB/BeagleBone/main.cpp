#include <QCoreApplication>

#include "Log.h"
#include "Utility.h"
#include "Connection.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Log logger;
    Utility util;
    Connection connector;


    QString xml_data;

    xml_data = util.ReadXmlFile();

    //Esp EspAbajo;
    //Esp EspPlatform
    //Fpga myFpga;
    //Motor myMotor;
    //Gui myGui;


    // Fpga
    // QObject::connect(&connector, SIGNAL(SendDatatoFpga(QString, float)),&myFpga,SLOT(OnDataReceived(QString, float)));
    // QObject::connect(&myFpga, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //EspAbajo
    //QObject::connect(&connector, SIGNAL(SendDataEspAbajo(QString, float)),&EspAbajo,SLOT(OnDataReceived(QString, float)));
    // QObject::connect(&EspAbajo, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));


    //EspPlatform
    //QObject::connect(&connector, SIGNAL(SendDataEspPlatform(QString, float)),&EspPlatform,SLOT(OnDataReceived(QString, float)));
    // QObject::connect(&EspPlatform, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //Motor
    //QObject::connect(&connector,SIGNAL(SendDataMotor(QString, float)),&myMotor,SLOT(OnDataReceived(QString, float)));
    // QObject::connect(&myMotor, SIGNAL(AddToLog(QString)),&logger,SLOT(OnAddToLog(QString)));

    //Gui
    //issue #9


    return a.exec();
}
