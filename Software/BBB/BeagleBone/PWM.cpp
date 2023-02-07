#include "PWM.h"
#include <stdio.h>

#ifdef USE_LIBROBOTCONTROL
#include <rc/pwm.h>


PWM::PWM(int subsystem, int freq, QObject *parent)    : QObject(parent)
{
    int r=rc_pwm_init(subsystem,freq);
    if (r<0) {
        fprintf(stderr,"ERROR: failed to run rc_pwm_init(%d,%d)\n",subsystem,freq);
        fflush(stderr);
        initOk=false;
        return;
    }
    pwm_ss=subsystem;
    pwm_freq=freq;
    initOk=true;
}

PWM::~PWM()
{
    initOk=false;
    rc_pwm_cleanup(pwm_ss);
}

void PWM::SetPwmDuty(double duty,bool chann_A)
{
    if (! initOk)
        return;
    if (duty<0)
        duty=0;
    if (duty>1)
        duty=1;
    rc_pwm_set_duty(pwm_ss,(chann_A) ? 'A' : 'B',duty);

}
#else
// https://github.com/cdsteinkuehler/beaglebone-universal-io
// https://stackoverflow.com/questions/50204329/pwm-chip-to-pin-mapping-on-beaglebone-black-v4-14
// https://elinux.org/Beagleboard:BeagleBoneBlack_Debian#U-Boot_Overlays
// http://exploringbeaglebone.com/
// http://www.derekmolloy.ie/

PWM::PwmPinInfo PWM::pwmPins[2]={ { PWM::P9_14_PWM,0x48302200,'A',-1},
                        { PWM::P9_16_PWM,0x48302200,'B',-1}
                      };

bool PWM::WriteToFile(const char *name, int value)
{
    char filename[64];
    strcpy(filename,pwmPins[pwmInfoIndex].pwmChipPath);
    strcat(filename,name);
    FILE* fid=fopen(filename,"w");
    if (fid!=NULL)
    {
        fprintf(fid,"%d",value);
        fclose(fid);
        return true;
    }
    return false;
}

PWM::PWM(PwmPinEnum pin, int freq_hz, double pwm_init, QObject *parent)
{
    for (int j=0;j<2;j++)
    {
        if (pwmPins[j].pin==pin)
        {
            pwmInfoIndex=j;
            break;
        }
    }
    if (pwmInfoIndex<0)
    {
        fprintf(stderr,"ERROR: failed to find PWM pin(%04x)\n",(int) pin);
        fflush(stderr);
        initOk=false;
        return;
    }

    char config_cmd[64];
    sprintf(config_cmd,"config-pin P%1d_%2d pwm",(int) pin / 1000,(int) pin % 1000);
    system(config_cmd);

    FILE* pf=popen("ls -al /sys/class/pwm","r");
    char output[4096];
    char add_to_find[64];
    sprintf(add_to_find,"/%08x.pwm/pwm/pwmchip",pwmPins[pwmInfoIndex].add);
    while (fgets(output,4096,pf)!=NULL)
    {
//        printf("OUTPUT = %s\n",output);
        char* found=strstr(output,add_to_find);
        if (found!=NULL)
        {
            pwmPins[pwmInfoIndex].pwmChip=atoi(found+strlen(add_to_find));
            sprintf(pwmPins[pwmInfoIndex].pwmChipPath,"/sys/class/pwm/pwmchip%d/pwm%d/",pwmPins[pwmInfoIndex].pwmChip,(int) (pwmPins[pwmInfoIndex].chann-'A'));
            printf("OUTPUT TO = %s\n",pwmPins[pwmInfoIndex].pwmChipPath);
            break;
        }
    }
    pclose(pf);

    if (pwmPins[pwmInfoIndex].pwmChip>=0)
    {
        pwm_period_ns=(int) (1.0e9/freq_hz);
        WriteToFile("enable",0);
        WriteToFile("period",pwm_period_ns);
        WriteToFile("duty_cycle",(int) (pwm_init*pwm_period_ns));
        WriteToFile("enable",1);


    }
//    fflush(stdout);
}

PWM::~PWM()
{

}

void PWM::SetPwmDuty(double duty)
{

}

#endif
