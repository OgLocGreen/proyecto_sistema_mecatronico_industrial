#include "Data.h"

Data::Data()
{

}

bool Data::readInitAll(const QString &xml_data)
{
    readInitDataMotorDriver(xml_data);
    readInitEsp32_top(xml_data);
    readInitEsp32_front(xml_data);
    readInitFpga(xml_data);
    readInitBeaglebone(xml_data);
    readInitGui(xml_data);
    readInitMando(xml_data);
}

bool Data::readInitDataMotorDriver(const QString& xml_data)
{
    motor_driver_data.motor_speed_left = util.GetXmlStr(xml_data,"motor_driver","motor_speed_left");
    motor_driver_data.motor_speed_right = util.GetXmlStr(xml_data,"motor_driver","motor_speed_right");
    return 1;
}


bool Data::readInitEsp32_top(const QString& xml_data)
{
    esp32_top_struct temp_esp32_top;
    temp_esp32_top.ip = util.GetXmlStr(xml_data,"esp32_top","ip");
    temp_esp32_top.port = util.GetXmlStr(xml_data,"esp32_top","pulsar");
    temp_esp32_top.video = util.GetXmlStr(xml_data,"esp32_top","video");
    temp_esp32_top.video_quality = util.GetXmlStr(xml_data,"esp32_top","video_quality");
    temp_esp32_top.pulsar = util.GetXmlStr(xml_data,"esp32_top","pulsar");
    return 1;
}

bool Data::readInitEsp32_front(const QString& xml_data)
{
    esp32_front_struct temp_esp32_front;
    temp_esp32_front.ip = util.GetXmlStr(xml_data,"esp32_front","ip");
    temp_esp32_front.port = util.GetXmlStr(xml_data,"esp32_front","pulsar");
    temp_esp32_front.video = util.GetXmlStr(xml_data,"esp32_front","video");
    temp_esp32_front.video_quality = util.GetXmlStr(xml_data,"esp32_front","video_quality");
    return 1;
}


bool Data::readInitFpga(const QString& xml_data)
{
    fpga_struct temp_fpga;
    temp_fpga.motor_speed_cam = util.GetXmlStr(xml_data,"fpga","motor_speed_cam");
    temp_fpga.motor_speed_platform = util.GetXmlStr(xml_data,"fpga","motor_speed_platform");
    return 1;
}

bool Data::readInitBeaglebone(const QString& xml_data)
{
    beaglebone_struct temp_beaglebone;
    temp_beaglebone.boradcast_time = util.GetXmlStr(xml_data,"beaglebone","boradcast_time");
    temp_beaglebone.controller_time = util.GetXmlStr(xml_data,"beaglebone","controller_time");
    temp_beaglebone.sensor_time = util.GetXmlStr(xml_data,"beaglebone","sensor_time");
    temp_beaglebone.temperatur = util.GetXmlStr(xml_data,"beaglebone","temperatur");
    temp_beaglebone.battery = util.GetXmlStr(xml_data,"beaglebone","battery");
    temp_beaglebone.led_light = util.GetXmlStr(xml_data,"beaglebone","led_light");
    temp_beaglebone.ventilator = util.GetXmlStr(xml_data,"beaglebone","ventilator");
    temp_beaglebone.speaker = util.GetXmlStr(xml_data,"beaglebone","speaker");
    temp_beaglebone.zero_pos_low = util.GetXmlStr(xml_data,"beaglebone","zero_pos_low");
    temp_beaglebone.x_pos_momento = util.GetXmlStr(xml_data,"beaglebone","x_pos_momento");
    temp_beaglebone.y_pos_momento = util.GetXmlStr(xml_data,"beaglebone","y_pos_momento");
    temp_beaglebone.ultrasound_right = util.GetXmlStr(xml_data,"beaglebone","ultrasound_right");
    temp_beaglebone.ultrasound_left = util.GetXmlStr(xml_data,"beaglebone","zero_pos_low");
    temp_beaglebone.room_light = util.GetXmlStr(xml_data,"beaglebone","x_pos_momento");
    return 1;
}

bool Data::readInitGui(const QString& xml_data)
{
    gui_struct temp_gui;
    temp_gui.ip = util.GetXmlStr(xml_data,"gui","ip");
    return 1;
}

bool Data::readInitMando(const QString& xml_data)
{
    mando_struct temp_mando;
    temp_mando.ip = util.GetXmlStr(xml_data,"mando","ip");
    return 1;
}



