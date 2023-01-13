#ifndef TRAJECTORY_H
#define TRAJECTORY_H

#include <QObject>
#include <Log.h>
#include <Data.h>
#include "Connection.h"

class Trajectory : public QObject
{
    Q_OBJECT
    Log logger;
    Data myData;
    Connection connector;

public:
    Trajectory();

private:
    int valorX, valorY;
    float module, angle;
    int vel_I, vel_D;
    QString vel_I_, vel_D_;
    int sector;
    float vel_MAX;

    void calc_movement(/*QPoint* JoyPos*/);

signals:
     void SendDataMotor(QString dataName,QString value);     // issue #18
};

#endif // TRAJECTORY_H
