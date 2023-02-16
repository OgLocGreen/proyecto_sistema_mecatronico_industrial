#include "BeagleBone.h"

BeagleBone::BeagleBone(Data &myDataadrs)  : myData(myDataadrs)
{

}
/*
void BeagleBone::Leds_on()
{
    rc_gpio_set_value(67/32,67%32,1);
}

void BeagleBone::Leds_off()
{
    rc_gpio_set_value(67/32,67%32,0);
}

void BeagleBone::Fans_on(int frecuancia, float duty)
{
    PWM pwm1(PWM::P8_13_PWM,frecuancia,duty);
    PWM pwm2(PWM::P8_19_PWM,frecuancia,duty);
}

void BeagleBone::Fans_off()
{
    PWM pwm1(PWM::P8_13_PWM,1,0);
    PWM pwm2(PWM::P8_19_PWM,1,0);
}

double BeagleBone::Temperature()
{

    return rc_adc_read_volt(1)/1.8*150;
}

float BeagleBone::Position(Proximity_Detectors ultrasound)
{
    float pos=ultrasound.GetEchoTime_us(50000)*343/2/10000;
    return pos;
}
*/
void BeagleBone::onTimerControll()
{
    int i = 0;
    while( i < 100)
        i++;

    qDebug() << "hello this is the Timer here Controll" << Qt::endl;

    emit AddToLog("una ronda de controll");

}

void BeagleBone::onTimerSensor()
{
    int i = 0;
    while( i < 100)
        i++;

    qDebug() << "hello this is the Timer here Controll" << Qt::endl;

}



