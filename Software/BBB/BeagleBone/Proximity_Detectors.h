#ifndef PROXIMITY_DETECTORS_H
#define PROXIMITY_DETECTORS_H

#include <rc/gpio.h>

class Proximity_Detectors
{
private:
    bool useSamePin;
    int chipTrigger,pinOffsetTrigger,chipEcho,pinOffsetEcho;
public:
    explicit Proximity_Detectors(int i_chipTrigger,int i_pinOffsetTrigger,
                                 int i_chipEcho=-1,int i_pinOffsetEcho=-1);
    ~Proximity_Detectors();
    int GetEchoTime_us(int maxTime_us);
};

#endif // PROXIMITY_DETECTORS_H
