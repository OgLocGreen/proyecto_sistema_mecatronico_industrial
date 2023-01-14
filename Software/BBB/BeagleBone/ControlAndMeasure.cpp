#include "ControlAndMeasure.h"

ControlAndMeasure::ControlAndMeasure()
{

}


void ControlAndMeasure::onTimerControll()
{
    int i = 0;
    while( i < 100)
        i++;

    qDebug() << "hello this is the Timer here Controll" << Qt::endl;

    emit AddToLog("una ronda de controll");

}

void ControlAndMeasure::onTimerSensor()
{
    int i = 0;
    while( i < 100)
        i++;

    qDebug() << "hello this is the Timer here Controll" << Qt::endl;

}
