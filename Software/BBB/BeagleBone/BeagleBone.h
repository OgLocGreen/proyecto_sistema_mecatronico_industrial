#ifndef BEAGLEBONE_H
#define BEAGLEBONE_H
// test
#include <QObject>
#include <QDebug>
#include <Data.h>

#include <QCoreApplication>
#include <QTextStream>
#include <QTimer>
#include "PWM.h"
#include <string.h>
/*
#include <rc/gpio.h>
#include <rc/adc.h>
#include <rc/time.h>
*/
#include "Proximity_Detectors.h"

#define P9_25_GPIO  117
#define P9_27_GPIO  115

#define P9_15_GPIO  48
#define P9_23_GPIO  49


class BeagleBone : public QObject
{
    Q_OBJECT
    Data& myData;
public:
    BeagleBone(Data& myDataadrs);
/*
    int leds= rc_gpio_init(67/32,67%32,GPIOHANDLE_REQUEST_OUTPUT);
    Proximity_Detectors ultrasound1(P9_25_GPIO/32,P9_25_GPIO%32,P9_27_GPIO/32,P9_27_GPIO%32);
    Proximity_Detectors ultrasound2(P9_15_GPIO/32,P9_15_GPIO%32,P9_23_GPIO/32,P9_23_GPIO%32);

    rc_adc_init();

    void Leds_on();
    void Leds_off();
    void Fans_on(int frecuancia,float duty);
    void Fans_off();
    double Temperature();
    float Position(Proximity_Detectors ultrasound);
*/

private slots:
    void onTimerControll();
    void onTimerSensor();

signals:
    void AddToLog(QString text);


};
#endif // BEAGLEBONE_H
