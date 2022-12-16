#ifndef DATA_H
#define DATA_H

#include <QString>
#include <QObject>
#include <Utility.h>

class Data : public QObject
{
    Q_OBJECT
    Utility util;
public:
    Data();
    struct motor_driver_struct{
        QString motor_speed_left;
        QString motor_speed_right;
    };
    struct esp32_top_struct {
        QString ip;
        QString port;
        QString video;
        QString video_quality;
        QString pulsar;
    };
    struct esp32_front_struct {
        QString ip;
        QString port;
        QString video;
        QString video_quality;
    };
    struct fpga_struct {
        QString motor_speed_cam;
        QString motor_speed_platform;
    };
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
    struct gui_struct{
        QString ip;
    };
    struct mando_struct
    {
        QString ip;
    };

    motor_driver_struct readInitDataMotorDriver(QString xml_data);
    esp32_top_struct readInitEsp32_top(QString xml_data);
    esp32_front_struct readInitEsp32_front(QString xml_data);
    fpga_struct readInitFpga(QString xml_data);
    beaglebone_struct readInitBeaglebone(QString xml_data);
    gui_struct readInitGui(QString xml_data);
    mando_struct readInitMando(QString xml_data);

    motor_driver_struct motor_driver_data;
    esp32_top_struct esp32_top_data;
    esp32_front_struct esp32_front_data;
    fpga_struct fpga_data;
    beaglebone_struct beaglebone_data;
    gui_struct gui_data;
    mando_struct mando_data;

private:
    QString GetXmlStr(const QString &textXml, const QString &tagXml1, const QString &tagXml2);

};

#endif // DATA_H
