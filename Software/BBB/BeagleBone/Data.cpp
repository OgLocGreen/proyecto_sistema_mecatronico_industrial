#include "Data.h"

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


Data::Data()
{

}

struct motor_driver_struct
{
    QString motor_speed_left;
    QString motor_speed_right;
};

motor_driver_struct readInitDataMotorDriver(QString xml_data)
{
    motor_driver_struct motor;
    motor.motor_speed_left = GetXmlStr(xml_data,"motor_driver","motor_speed_left");
    motor.motor_speed_right = GetXmlStr(xml_data,"motor_driver","motor_speed_right");
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
    temp_esp32_top.ip = GetXmlStr(xml_data,"esp32_top","ip");
    temp_esp32_top.port = GetXmlStr(xml_data,"esp32_top","pulsar");
    temp_esp32_top.video = GetXmlStr(xml_data,"esp32_top","video");
    temp_esp32_top.video_quality = GetXmlStr(xml_data,"esp32_top","video_quality");
    temp_esp32_top.pulsar = GetXmlStr(xml_data,"esp32_top","pulsar");
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
    temp_esp32_front.ip = GetXmlStr(xml_data,"esp32_front","ip");
    temp_esp32_front.port = GetXmlStr(xml_data,"esp32_front","pulsar");
    temp_esp32_front.video = GetXmlStr(xml_data,"esp32_front","video");
    temp_esp32_front.video_quality = GetXmlStr(xml_data,"esp32_front","video_quality");
    return temp_esp32_front;
}

struct fpga_struct {
    QString motor_speed_cam;
    QString motor_speed_platform;
};

fpga_struct readInitFpga(QString xml_data)
{
    fpga_struct temp_fpga;
    temp_fpga.motor_speed_cam = GetXmlStr(xml_data,"fpga","motor_speed_cam");
    temp_fpga.motor_speed_platform = GetXmlStr(xml_data,"fpga","motor_speed_platform");
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
    temp_beaglebone.boradcast_time = GetXmlStr(xml_data,"beaglebone","boradcast_time");
    temp_beaglebone.controller_time = GetXmlStr(xml_data,"beaglebone","controller_time");
    temp_beaglebone.sensor_time = GetXmlStr(xml_data,"beaglebone","sensor_time");
    temp_beaglebone.temperatur = GetXmlStr(xml_data,"beaglebone","temperatur");
    temp_beaglebone.battery = GetXmlStr(xml_data,"beaglebone","battery");
    temp_beaglebone.led_light = GetXmlStr(xml_data,"beaglebone","led_light");
    temp_beaglebone.ventilator = GetXmlStr(xml_data,"beaglebone","ventilator");
    temp_beaglebone.speaker = GetXmlStr(xml_data,"beaglebone","speaker");
    temp_beaglebone.zero_pos_low = GetXmlStr(xml_data,"beaglebone","zero_pos_low");
    temp_beaglebone.x_pos_momento = GetXmlStr(xml_data,"beaglebone","x_pos_momento");
    temp_beaglebone.y_pos_momento = GetXmlStr(xml_data,"beaglebone","y_pos_momento");
    temp_beaglebone.ultrasound_right = GetXmlStr(xml_data,"beaglebone","ultrasound_right");
    temp_beaglebone.ultrasound_left = GetXmlStr(xml_data,"beaglebone","zero_pos_low");
    temp_beaglebone.room_light = GetXmlStr(xml_data,"beaglebone","x_pos_momento");
    return temp_beaglebone;
}

struct gui_struct{
    QString ip;
};

gui_struct readInitGui(QString xml_data)
{
    gui_struct temp_gui;
    temp_gui.ip = GetXmlStr(xml_data,"gui","ip");
    return temp_gui;
}

struct mando_struct
{
    QString ip;
};

mando_struct readInitMando(QString xml_data)
{
    mando_struct temp_mando;
    temp_mando.ip = GetXmlStr(xml_data,"mando","ip");
    return temp_mando;
}



