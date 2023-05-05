#ifndef FPGA_H
#define FPGA_H

#include <QSerialPort>
#include <QObject>
#include <QTimer>

class Fpga : public QObject
{
    Q_OBJECT

private:
    QSerialPort serial; /* Serial port initialized to comunicate with FPGA via RS232 */

    QByteArray snd; /* Sending buffer */

    void SendDataRS232(); /* Sends a byte array that contains the info to control fpga */

    char angle_servo = 15; /* Servo angle btw 0 to 31 (0 to 140 interpolated in FPGA) */
    QString directionServo; /* Buffer servo direction to use it on OnTimerServo*/
    QTimer timerServo; /* Timer that controlls servo angle speed of change */

public:
   explicit Fpga(QObject *parent = nullptr);
public slots:
    void OnDataRecievedFromBBB(QString direction_elev, QString enable_elev, QString enable_cam, QString direction_cam, QString cam_value, QString enable_fast); /* When new command recieved, creates the byte array to send to FPGA */
private slots:
    void OnFPGAReadyRead(); /* Recieves answer from FPGA */
    void OnTimerServo(); /* Sends new angle command to the FPGA */
};

#endif // FPGA_H
