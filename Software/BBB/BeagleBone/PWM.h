#ifndef PWM_H
#define PWM_H

#include <QObject>

#undef USE_LIBROBOTCONTROL  // Da un error de unexport, no parece que esté bien compilada para la versión del sistema

#ifdef USE_LIBROBOTCONTROL

class PWM : public QObject
{
    Q_OBJECT
private:
    bool initOk=false;
    int pwm_ss=-1,pwm_freq=-1;
public:
    explicit PWM(int subsystem,int freq,QObject *parent = nullptr);
    ~PWM();
signals:
public slots:
    void SetPwmDuty(double duty,bool chann_A);

};

#else


class PWM : public QObject
{
    Q_OBJECT
public:
    typedef enum { P9_14_PWM=9*1000+14,P9_16_PWM=9*1000+16, P8_13_PWM=8*1000+13, P8_19_PWM=8*1000+19,
                    } PwmPinEnum;
    typedef struct PwmPinInfo
    {
        PwmPinEnum pin;
        unsigned int add; // http://www.ti.com/lit/ug/spruh73p/spruh73p.pdf (pag 184), https://stackoverflow.com/questions/50204329/pwm-chip-to-pin-mapping-on-beaglebone-black-v4-14
        char chann;
        int pwmChip;
        char pwmChipPath[64];
    } PwmPinInfo;

private:
    bool initOk=false;
    int pwmInfoIndex=-1,pwm_period_ns=-1,pwm_freq=-1;
    static PwmPinInfo pwmPins[2];
    bool WriteToFile(const char* filename,int value);
public:
    explicit PWM(PwmPinEnum pin,int freq_hz,double pwm_init,QObject *parent = nullptr);
    ~PWM();
signals:
public slots:
    void SetPwmDuty(double duty);

};

#endif


#endif // PWM_H
