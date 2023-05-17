#include "Proximity_Detectors.h"
#include <unistd.h>
#include <stdio.h>
#include <inttypes.h>

#define ALMAR_GPIO_HANDLE_REQUEST_INPUT_PULLUP 0x21
#define ALMAR_GPIO_HANDLE_REQUEST_INPUT_PULLDOWN 0x22

/*

// Proximity detector declaration
Proximity_Detectors::Proximity_Detectors(int i_chipTrigger, int i_pinOffsetTrigger, int i_chipEcho, int i_pinOffsetEcho)
{
    // Trigger and Echo pin declaration
    chipTrigger=i_chipTrigger;
    pinOffsetTrigger=i_pinOffsetTrigger;

    // If there where only 3 pins, so Trigger and Echo are the same, its registered in this variable
    useSamePin=(i_chipEcho<0 || i_pinOffsetEcho<0 || (i_chipTrigger==i_chipEcho && i_pinOffsetTrigger==i_pinOffsetEcho) );
    chipEcho=(useSamePin) ? i_chipTrigger : i_chipEcho;
    pinOffsetEcho=(useSamePin) ? i_pinOffsetTrigger : i_pinOffsetEcho;

    // Pins initialization, Echo as input and Trigger as output
    int err =rc_gpio_init(chipTrigger,pinOffsetTrigger,GPIOHANDLE_REQUEST_OUTPUT);
    if (err==0)
    {
        printf("Managing trigger output %d:%d\n",chipTrigger,pinOffsetTrigger);  fflush(stdout);
    }
    else
    {
        printf("Error on trigger output %d:%d\n",chipTrigger,pinOffsetTrigger);  fflush(stdout);
        return;
    }

    // If Trigger and Echo are the same pin
    if (useSamePin)
        rc_gpio_cleanup(chipTrigger,pinOffsetTrigger);

    err =rc_gpio_init(chipEcho,pinOffsetEcho,ALMAR_GPIO_HANDLE_REQUEST_INPUT_PULLUP);
    if (err==0)
    {
        printf("Managing echo input Pull-Up %d:%d\n",chipEcho,pinOffsetEcho);  fflush(stdout);
        printf("Current echo input is : %d\n",rc_gpio_get_value(chipEcho,pinOffsetEcho)); fflush(stdout);
    }
    else
    {
        printf("Error on echo input %d:%d\n",chipEcho,pinOffsetEcho);  fflush(stdout);
        return;
    }

    err=rc_gpio_init_event(chipEcho,pinOffsetEcho,ALMAR_GPIO_HANDLE_REQUEST_INPUT_PULLUP, GPIOEVENT_REQUEST_BOTH_EDGES);
    if (err<0)
    {
        printf("Error on input event for %d:%d\n",chipEcho,pinOffsetEcho);  fflush(stdout);
        return;
    }

    if (useSamePin)
        rc_gpio_cleanup(chipEcho,pinOffsetEcho);
}

// Delete and release port function
Proximity_Detectors::~Proximity_Detectors()
{
    rc_gpio_cleanup(chipTrigger,pinOffsetTrigger);
        if (! useSamePin)
            rc_gpio_cleanup(chipEcho,pinOffsetEcho);
}

int Proximity_Detectors::GetEchoTime_us(int maxTime_us)
{
    int err;
        if (useSamePin)
        {
            rc_gpio_cleanup(chipTrigger,pinOffsetTrigger);
            err =rc_gpio_init(chipTrigger,pinOffsetTrigger,GPIOHANDLE_REQUEST_OUTPUT);
            if (err!=0)
            {
                printf("GetEchoTime_us() Error on output %d:%d\n",chipTrigger,pinOffsetTrigger);  fflush(stdout);
                return -1;
            }
        }

        // Trigger is reset and initialize as a logic "0"
        rc_gpio_set_value(chipTrigger,pinOffsetTrigger,1);
        usleep(10);
        rc_gpio_set_value(chipTrigger,pinOffsetTrigger,0);

        if (useSamePin)
        {
            rc_gpio_cleanup(chipEcho,pinOffsetEcho);
            err =rc_gpio_init(chipEcho,pinOffsetEcho,ALMAR_GPIO_HANDLE_REQUEST_INPUT_PULLUP);
            if (err!=0)
            {
                printf("GetEchoTime_us() Error on input %d:%d\n",chipEcho,pinOffsetEcho);  fflush(stdout);
                return -1;
            }

            err=rc_gpio_init_event(chipEcho,pinOffsetEcho,ALMAR_GPIO_HANDLE_REQUEST_INPUT_PULLUP, GPIOEVENT_REQUEST_BOTH_EDGES);
            if (err<0)
            {
                printf("GetEchoTime_us() Error on input event for %d:%d\n",chipEcho,pinOffsetEcho);  fflush(stdout);
                return -1;
            }
        }

        // Declaration of the rising and the falling edges used to measure the distance
        uint64_t rising_time_ns,falling_time_ns;
        int rising=rc_gpio_poll(chipEcho,pinOffsetEcho,maxTime_us/1000,&rising_time_ns);
        int falling=rc_gpio_poll(chipEcho,pinOffsetEcho,maxTime_us/1000,&falling_time_ns);

        // The distance is measured based on the time elapsed between the falling egde of Trigger and
        // the rising edge of Echo, if there are no errors, the value is converted based on the speed
        // of sound from time to distance
        int dife_us=(int) ((falling_time_ns-rising_time_ns)/1000);

        printf("GetEchoTime_us() Rising event=%d , Falling event=%d\n",rising,falling);
        if (rising==RC_GPIOEVENT_RISING_EDGE && falling==RC_GPIOEVENT_FALLING_EDGE)
        {
            printf("GetEchoTime_us() Rising(ns)=%" PRIu64 " , Falling(ns)=%" PRIu64 ", diff(us)=%d\n",
                    rising_time_ns,falling_time_ns,dife_us);
            fflush(stdout);
        }

        // If the time elapsed is greater than a certain margin, or the object is too far away or an
        // error has ocurred during the process
        else if (rising==RC_GPIOEVENT_TIMEOUT)
        {
            dife_us=-1;
            printf("GetEchoTime_us() Rising event timed-out\n");
            fflush(stdout);
        }
        else if (falling==RC_GPIOEVENT_TIMEOUT)
        {
            dife_us=-1;
            printf("GetEchoTime_us() Rising(ns)=%" PRIu64 " , Falling event timed-out\n",rising_time_ns);
            fflush(stdout);
        }

        if (useSamePin)
            rc_gpio_cleanup(chipEcho,pinOffsetEcho);

        return dife_us;
}
*/
