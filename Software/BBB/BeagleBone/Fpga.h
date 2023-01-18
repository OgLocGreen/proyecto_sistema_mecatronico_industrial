#ifndef FPGA_H
#define FPGA_H

#include <QObject>
#include <QSerialPort>

class Fpga : public QObject
{
    Q_OBJECT
public:
    Fpga(QObject *parent = nullptr);
    QString snd,answ; /* driver ask and answer buffer */
    QSerialPort serial; /* serial port */


    /* Command processing methods */
    void SendCmd2FPGA(); /* sends command to driver via SerialPort */
    void OnFPGAReadyRead(); /* reads driver response and checks if we get adecuate response */

public:
    void SendCmd2FPGA(QString _snd_manual); /* sends command to driver via SerialPort (MANUAL MODE) */
    QString ReadAnswFromFPGA(); /* reads answer from driver */

signals:
public slots:
    void OnDataRecieved(QString direction_elev,QString enable_elev, QString enable_cam,QString direction_cam,QString enable_fast); /* recieves data from BBB */
};

#endif // FPGA_H
