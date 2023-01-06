#ifndef CONTROLANDMEASURE_H
#define CONTROLANDMEASURE_H

#include <QObject>
#include <QDebug>

#include "Data.h"

class ControlAndMeasure: public QObject
{
    Q_OBJECT
    Data myData;
public:
    ControlAndMeasure();

private slots:
    void onTimerControll();
    void onTimerSensor();
};

#endif // CONTROLANDMEASURE_H
