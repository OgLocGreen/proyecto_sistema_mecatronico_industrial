#include <QCoreApplication>

#include "Log.h"
#include "Utility.h"
#include "Connection.h"
#include "ControlAndMeasure.h"


QString readXmlStr(QString data, QString tag1, QString tag2);

struct motor_driver_struct
{
    QString motor_speed_left;
    QString motor_speed_right;
};

motor_driver_struct readInitDataMotorDriver(QString xml_data)
{
    motor_driver_struct motor;
    motor.motor_speed_left = readXmlStr(xml_data,"motor_driver","motor_speed_left");
    motor.motor_speed_right = readXmlStr(xml_data,"motor_driver","motor_speed_right");
    return motor;
}

struct esp32_top_struct {
    QString ip;
    QString port;
    QString video;
    QString video_quality;
    QString pulsar;
};

esp32_top_struct readInitEsp32_top(QString xml_data)
{
    esp32_top_struct temp_esp32_top;
    temp_esp32_top.ip = readXmlStr(xml_data,"esp32_top","ip");
    temp_esp32_top.port = readXmlStr(xml_data,"esp32_top","pulsar");
    temp_esp32_top.video = readXmlStr(xml_data,"esp32_top","video");
    temp_esp32_top.video_quality = readXmlStr(xml_data,"esp32_top","video_quality");
    temp_esp32_top.pulsar = readXmlStr(xml_data,"esp32_top","pulsar");
    return temp_esp32_top;
}

struct esp32_front_struct {
    QString ip;
    QString port;
    QString video;
    QString video_quality;
};

esp32_front_struct readInitEsp32_front(QString xml_data)
{
    esp32_front_struct temp_esp32_front;
    temp_esp32_front.ip = readXmlStr(xml_data,"esp32_front","ip");
    temp_esp32_front.port = readXmlStr(xml_data,"esp32_front","pulsar");
    temp_esp32_front.video = readXmlStr(xml_data,"esp32_front","video");
    temp_esp32_front.video_quality = readXmlStr(xml_data,"esp32_front","video_quality");
    return temp_esp32_front;
}

struct fpga_struct {
    QString motor_speed_cam;
    QString motor_speed_platform;
};

fpga_struct readInitFpga(QString xml_data)
{
    fpga_struct temp_fpga;
    temp_fpga.motor_speed_cam = readXmlStr(xml_data,"fpga","motor_speed_cam");
    temp_fpga.motor_speed_platform = readXmlStr(xml_data,"fpga","motor_speed_platform");
    return temp_fpga;
}

struct beaglebone_struct {
    QString boradcast_time;
    QString controller_time;
    QString sensor_time;
    QString temperatur;
    QString battery;
    QString led_light;
    QString ventilator;
    QString speaker;
    QString zero_pos_low;
    QString x_pos_momento;
    QString y_pos_momento;
    QString ultrasound_right;
    QString ultrasound_left;
    QString room_light;
};

beaglebone_struct readInitBeaglebone(QString xml_data)
{
    beaglebone_struct temp_beaglebone;
    temp_beaglebone.boradcast_time = readXmlStr(xml_data,"beaglebone","boradcast_time");
    temp_beaglebone.controller_time = readXmlStr(xml_data,"beaglebone","controller_time");
    temp_beaglebone.sensor_time = readXmlStr(xml_data,"beaglebone","sensor_time");
    temp_beaglebone.temperatur = readXmlStr(xml_data,"beaglebone","temperatur");
    temp_beaglebone.battery = readXmlStr(xml_data,"beaglebone","battery");
    temp_beaglebone.led_light = readXmlStr(xml_data,"beaglebone","led_light");
    temp_beaglebone.ventilator = readXmlStr(xml_data,"beaglebone","ventilator");
    temp_beaglebone.speaker = readXmlStr(xml_data,"beaglebone","speaker");
    temp_beaglebone.zero_pos_low = readXmlStr(xml_data,"beaglebone","zero_pos_low");
    temp_beaglebone.x_pos_momento = readXmlStr(xml_data,"beaglebone","x_pos_momento");
    temp_beaglebone.y_pos_momento = readXmlStr(xml_data,"beaglebone","y_pos_momento");
    temp_beaglebone.ultrasound_right = readXmlStr(xml_data,"beaglebone","ultrasound_right");
    temp_beaglebone.ultrasound_left = readXmlStr(xml_data,"beaglebone","zero_pos_low");
    temp_beaglebone.room_light = readXmlStr(xml_data,"beaglebone","x_pos_momento");
    return temp_beaglebone;
}

struct gui_struct{
    QString ip;
};

gui_struct readInitGui(QString xml_data)
{
    gui_struct temp_gui;
    temp_gui.ip = readXmlStr(xml_data,"gui","ip");
    return temp_gui;
}

struct mando_struct
{
    QString ip;
};

mando_struct readInitMando(QString xml_data)
{
    mando_struct temp_mando;
    temp_mando.ip = readXmlStr(xml_data,"mando","ip");
    return temp_mando;
}

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

    //Then Write the xml_configdata to the write things.
    //maybe Read first dann then Initiaz/Constructros with arguments


    //Esp EspTop;
    esp32_top_struct esp32_top_data = readInitEsp32_top(xml_data);
    // EspTop myEspTop(esp32_top_data.ip,esp32_top_data.port,esp32_top_data.video,esp32_top_data.video_qulity)

    //Esp EspFront
    esp32_front_struct esp32_front_data = readInitEsp32_front(xml_data);
    // EspTop myEspTop(esp32_top_data.ip,esp32_top_data.port,esp32_top_data.video,esp32_top_data.video_qulity)

    //Fpga
    fpga_struct fpga_data = readInitFpga(xml_data);
    // Fpga myFpga();

    //MotorDriver
    motor_driver_struct motor_data = readInitDataMotorDriver(xml_data);

    //Gui
    gui_struct gui_data = readInitGui(xml_data);

    //BBB
    beaglebone_struct bbb_data = readInitBeaglebone(xml_data);


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
