#ifndef TRAJECTORY_H
#define TRAJECTORY_H

#include <QObject>
#include <QtMath>
#include <Log.h>
#include <Data.h>

class Trajectory : public QObject
{
    Q_OBJECT
    Log logger;
    Data& myData;
public:
 //   Trajectory(QObject *parent = nullptr);
    Trajectory(Data& myDataadrs);
private:
    int valorX, valorY;
    float module, angle;
    int vel_I, vel_D;
    QString vel_I_, vel_D_;
    int sector;
    float vel_max;


public slots:
    void OnDataReceived(QString x, QString y);

signals:
     void SendDataMotor(QString right_motor_speed_prcnt,QString left_motor_speed_prcnt);     // issue #18
};

#endif // TRAJECTORY_H
