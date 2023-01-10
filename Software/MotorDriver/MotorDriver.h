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

    /* Command processing methods */
    void SendCmd2Driver(); /* sends command to driver via SerialPort */
    void OnDriverReadyRead(); /* reads driver response and checks if we get adecuate response */

    /* Movement methods */
    void MoveStraightAtConstantSpeed(QString _motorselect, int _speed_hz);
    void StopMotor(QString _motorselect); /* stop selected motor */
public:

    explicit MotorDriver(QObject *parent = nullptr);
    void SendCmd2Driver(QString _snd_manual); /* sends command to driver via SerialPort (MANUAL MODE) */
    QString ReadAnswFromDriver(); /* reads answer from driver */

signals:
public slots:

    void OnNewDataRecieved(const QString &request, const QString &value, const QString &motorselect); /* Called when recieves SendDataToMotorDriver */

};

#endif // MOTORDRIVER_H
