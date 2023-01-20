#include "BeagleBone.h"

BeagleBone::BeagleBone(Data &myDataadrs)  : myData(myDataadrs)
{

}

void BeagleBone::Encender_faros()
{
    rc_gpio_set_value(67/32,67%32,1);
}

void BeagleBone::Apagar_Faros()
{
    rc_gpio_set_value(67/32,67%32,0);
}

void BeagleBone::Encender_Ventiladores(int frecuancia, float duty)
{
    PWM pwm1(PWM::P8_13_PWM,frecuancia,duty);
    PWM pwm2(PWM::P8_19_PWM,frecuancia,duty);
}

void BeagleBone::Apagar_Ventiladores()
{
    PWM pwm1(PWM::P8_13_PWM,1,0);
    PWM pwm2(PWM::P8_19_PWM,1,0);
}

double BeagleBone::Temperatura()
{

    return rc_adc_read_volt(1);
}
