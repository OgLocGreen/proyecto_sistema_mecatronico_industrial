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
        QString direction_elev;
        QString frecuency_switch;
        QString enable_elev;
        QString enable_cam;
        QString direction_cam;
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
    struct trajectory_struct{
        QString joy_x;
        QString joy_y;
        QString vel_max;
    };

    int test;
    motor_driver_struct motor_driver_data;
    esp32_top_struct esp32_top_data;
    esp32_front_struct esp32_front_data;
    fpga_struct fpga_data;
    beaglebone_struct beaglebone_data;
    gui_struct gui_data;
    mando_struct mando_data;
    trajectory_struct trajectory_data;

    bool readInitAll(const QString& xml_data);
    QString makeXml();



private:
    bool readInitDataMotorDriver(const QString& xml_data);
    bool readInitEsp32_top(const QString& xml_data);
    bool readInitEsp32_front(const QString& xml_data);
    bool readInitFpga(const QString& xml_data);
    bool readInitBeaglebone(const QString& xml_data);
    bool readInitGui(const QString& xml_data);
    bool readInitMando(const QString& xml_data);
    bool readInitTrajectory(const QString& xml_data);

    QString XmlPutFloat(const QString& tag,float value);
    QString XmlPutString(const QString& tag,const QString& value);
    QString XmlPutStringSpace(const QString& tag,const QString& value);

public slots:
    void OnTimer();

signals:
    void sendToPC(QString msg);


};

#endif // DATA_H
