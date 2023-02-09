#ifndef BEAGLEBONE_H
#define BEAGLEBONE_H
// test
#include <QObject>

#include <Data.h>

#include <QCoreApplication>
#include <QTextStream>
#include <QTimer>
#include "PWM.h"
#include <string.h>
#include <rc/gpio.h>
#include <rc/adc.h>
#include <rc/time.h>

class BeagleBone : public QObject
{
    Q_OBJECT
    Data& myData;
public:
    BeagleBone(Data& myDataadrs);

    int leds= rc_gpio_init(67/32,67%32,GPIOHANDLE_REQUEST_OUTPUT);

    void Encender_faros();
    void Apagar_Faros();
    void Encender_Ventiladores(int frecuancia,float duty);
    void Apagar_Ventiladores();
    double Temperatura();

};

#endif // BEAGLEBONE_H
