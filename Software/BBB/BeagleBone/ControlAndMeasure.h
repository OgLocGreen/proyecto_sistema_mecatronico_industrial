#ifndef CONTROLANDMEASURE_H
#define CONTROLANDMEASURE_H

#include <QObject>
#include <QDebug>

class ControlAndMeasure: public QObject
{
    Q_OBJECT
public:
    ControlAndMeasure();

private slots:
    void onTimerControll();
    void onTimerSensor();
};

#endif // CONTROLANDMEASURE_H
