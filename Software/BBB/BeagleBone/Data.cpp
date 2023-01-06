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
    esp32_top_data.ip = util.GetXmlStr(xml_data,"esp32_top","ip");
    esp32_top_data.port = util.GetXmlStr(xml_data,"esp32_top","port");
    esp32_top_data.video = util.GetXmlStr(xml_data,"esp32_top","video");
    esp32_top_data.video_quality = util.GetXmlStr(xml_data,"esp32_top","video_quality");
    esp32_top_data.pulsar = util.GetXmlStr(xml_data,"esp32_top","pulsar");
    return 1;
}

bool Data::readInitEsp32_front(const QString& xml_data)
{
    esp32_front_data.ip = util.GetXmlStr(xml_data,"esp32_front","ip");
    esp32_front_data.port = util.GetXmlStr(xml_data,"esp32_front","pulsar");
    esp32_front_data.video = util.GetXmlStr(xml_data,"esp32_front","video");
    esp32_front_data.video_quality = util.GetXmlStr(xml_data,"esp32_front","video_quality");
    return 1;
}


bool Data::readInitFpga(const QString& xml_data)
{
    fpga_data.motor_speed_cam = util.GetXmlStr(xml_data,"fpga","motor_speed_cam");
    fpga_data.motor_speed_platform = util.GetXmlStr(xml_data,"fpga","motor_speed_platform");
    return 1;
}

bool Data::readInitBeaglebone(const QString& xml_data)
{
    beaglebone_data.boradcast_time = util.GetXmlStr(xml_data,"beaglebonorade","boradcast_time");
    beaglebone_data.controller_time = util.GetXmlStr(xml_data,"beaglebone","controller_time");
    beaglebone_data.sensor_time = util.GetXmlStr(xml_data,"beaglebone","sensor_time");
    beaglebone_data.temperatur = util.GetXmlStr(xml_data,"beaglebone","temperatur");
    beaglebone_data.battery = util.GetXmlStr(xml_data,"beaglebone","battery");
    beaglebone_data.led_light = util.GetXmlStr(xml_data,"beaglebone","led_light");
    beaglebone_data.ventilator = util.GetXmlStr(xml_data,"beaglebone","ventilator");
    beaglebone_data.speaker = util.GetXmlStr(xml_data,"beaglebone","speaker");
    beaglebone_data.zero_pos_low = util.GetXmlStr(xml_data,"beaglebone","zero_pos_low");
    beaglebone_data.x_pos_momento = util.GetXmlStr(xml_data,"beaglebone","x_pos_momento");
    beaglebone_data.y_pos_momento = util.GetXmlStr(xml_data,"beaglebone","y_pos_momento");
    beaglebone_data.ultrasound_right = util.GetXmlStr(xml_data,"beaglebone","ultrasound_right");
    beaglebone_data.ultrasound_left = util.GetXmlStr(xml_data,"beaglebone","zero_pos_low");
    beaglebone_data.room_light = util.GetXmlStr(xml_data,"beaglebone","x_pos_momento");
    return 1;
}

bool Data::readInitGui(const QString& xml_data)
{
    gui_data.ip = util.GetXmlStr(xml_data,"gui","ip");
    return 1;
}

bool Data::readInitMando(const QString& xml_data)
{
    mando_data.ip = util.GetXmlStr(xml_data,"mando","ip");
    return 1;
}

QString Data::XmlPutString(const QString& tag,const QString& value)
{

      QString ret;
      ret="<"+tag+">"+value+"</"+tag+">";

      return ret;

}


QString Data::XmlPutStringSpace(const QString& tag,const QString& value)

{

      QString ret;
      ret="<"+tag+">"+"\n"+value+"</"+tag+">"+"\n";

      return ret;

}

QString Data::XmlPutFloat(const QString& tag,float value)

{
    QString ret;
    ret="<"+tag+">"+value+"</"+tag+">";

    return ret;

}

QString Data::makeXml()
{
    QString out;

    //motor_driver_struct
    QString motor_driver_struct_data = XmlPutString("motor_speed_left", motor_driver_data.motor_speed_left)+"\n" +
            XmlPutString("motor_speed_left", motor_driver_data.motor_speed_right)+"\n";

    out.append(XmlPutStringSpace("motor_driver",motor_driver_struct_data));

    //esp32_top
    QString esp32_top_struct_data = XmlPutString("ip", esp32_top_data.ip)+"\n" +
            XmlPutString("port", esp32_top_data.ip)+"\n" +
            XmlPutString("video", esp32_top_data.video)+"\n" +
            XmlPutString("video_quality", esp32_top_data.video_quality)+"\n" +
            XmlPutString("pulsar", esp32_top_data.pulsar)+"\n";

    out.append(XmlPutStringSpace("esp32_top",esp32_top_struct_data));

    //esp32_front
    QString esp32_front_struct_data = XmlPutString("ip", esp32_front_data.ip)+"\n" +
            XmlPutString("port", esp32_front_data.ip)+"\n" +
            XmlPutString("video", esp32_front_data.video)+"\n" +
            XmlPutString("video_quality", esp32_front_data.video_quality)+"\n";

    out.append(XmlPutStringSpace("esp32_front",esp32_front_struct_data));

    //esp32_front
    QString fpga_struct_data = XmlPutString("ip", fpga_data.motor_speed_cam)+"\n" +
            XmlPutString("port", fpga_data.motor_speed_platform)+"\n";

    out.append(XmlPutStringSpace("fpga",fpga_struct_data));

    //esp32_top
    QString beaglebone_struct_data = XmlPutString("boradcast_time", beaglebone_data.boradcast_time)+"\n" +
            XmlPutString("controller_time", beaglebone_data.controller_time)+"\n" +
            XmlPutString("sensor_time", beaglebone_data.sensor_time)+"\n" +
            XmlPutString("temperatur", beaglebone_data.temperatur)+"\n" +
            XmlPutString("battery", beaglebone_data.battery)+"\n" +
            XmlPutString("led_light", beaglebone_data.led_light)+"\n" +
            XmlPutString("ventilator", beaglebone_data.ventilator)+"\n" +
            XmlPutString("speaker", beaglebone_data.speaker)+"\n" +
            XmlPutString("zero_pos_low", beaglebone_data.zero_pos_low)+"\n" +
            XmlPutString("x_pos_momento", beaglebone_data.x_pos_momento)+"\n" +
            XmlPutString("y_pos_momento", beaglebone_data.y_pos_momento)+"\n" +
            XmlPutString("ultrasound_right", beaglebone_data.ultrasound_right)+"\n" +
            XmlPutString("ultrasound_left", beaglebone_data.ultrasound_left)+"\n" +
            XmlPutString("room_light", beaglebone_data.room_light)+"\n";

    out.append(XmlPutStringSpace("beaglebone",beaglebone_struct_data));

    return out;
}


