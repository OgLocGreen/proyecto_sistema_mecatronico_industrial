#ifndef FPGA_H
#define FPGA_H

#include <QSerialPort>
#include <QObject>

class Fpga : public QObject
{
    Q_OBJECT

private:
    QSerialPort serial; /* Serial port initialized to comunicate with FPGA via RS232 */

    QByteArray snd; /* Sending buffer */

    void SendDataRS232(); /* Sends a byte array that contains the info to control fpga */

public:
   explicit Fpga(QObject *parent = nullptr);

public slots:
    void OnDataRecievedFromBBB(QString cmd); /* When new command recieved, creates the byte array to send to FPGA */

private slots:
    void OnFPGAReadyRead(); /* Recieves answer from FPGA */
};

#endif // FPGA_H
