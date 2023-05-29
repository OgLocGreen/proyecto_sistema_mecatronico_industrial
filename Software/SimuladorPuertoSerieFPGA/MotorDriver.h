#ifndef MOTORDRIVER_H
#define MOTORDRIVER_H

#include <QObject>
#include <QString>
#include <QSerialPort>

class MotorDriver : public QObject
{
    Q_OBJECT
private:

    QString snd,answ; /* driver ask and answer buffer */

    QSerialPort serial; /* serial port */

    QString right_motor_speed_Hz, left_motor_speed_Hz; /* buffer for motor speed in Hz */

    /* Command processing methods */
    void SendCmd2Driver(); /* sends command to driver via SerialPort */
    void OnDriverReadyRead(); /* reads driver response and checks if we get adecuate response */

    /* Unit Conversion */
    QString PercentToHzSpeed(QString _speed_prcnt); /* Takes a percentage from the max. value of the speed
                                                        and transforms it to a value in Hz */

    /* Movement methods */
    void StopMotor(QString _motorselect); /* stop selected motor */

public:

    explicit MotorDriver(QObject *parent = nullptr);
    void SendCmd2Driver(QString _snd_manual); /* sends command to driver via SerialPort (MANUAL MODE) */
    QString ReadAnswFromDriver(); /* reads answer from driver */

signals:
public slots:

    void OnNewDataRecieved(const QString &right_motor_speed_prcnt, const QString &left_motor_speed_prcnt); /* recieves data from BBB */
};

#endif // MOTORDRIVER_H
