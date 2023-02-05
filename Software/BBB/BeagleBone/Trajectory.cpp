#include "Trajectory.h"
#define PI 3.1416


Trajectory::Trajectory(Data& myDataadrs) : myData(myDataadrs)
{
    vel_max = myData.trajectory_data.vel_max.toFloat();
}

void Trajectory::OnDataReceived(QString x, QString y)
{
    valorX = x.toInt();
    valorY = y.toInt();
    module=sqrt(pow(valorX,2)+pow(valorY,2));
    //angle=atan((valorX/valorY));
    angle = qAtan2(valorX,valorY);

    if((angle>=(PI*80/180)&&angle<=(PI*90/180))||
        (angle>=(PI*80/180)&&angle<=(PI*90/180)))   //Joystic sobre Y=0
        sector=0;
    else if(valorY>=0)
    {
        if(valorX>=0)
            sector=1;   //Joystic Arriba Derecha
        else
            sector=2;   //Joystic Arriba Izquierda
    }
    else
    {
        if(valorX>=0)
            sector=3;   //Joystic Abajo Derecha
        else
            sector=4;   //Joystic Abajo Izquierda
    }
    switch(sector)
    {
        case(0):        //Joystic sobre Y=0
            if(valorX>=0)   //Giro horario
            {
                vel_I=vel_max*module;
                vel_D=-vel_max*module;
            }
            else            //Giro antihorario
            {
                vel_I=-vel_max*module;
                vel_D=vel_max*module;
            }
        break;

        case(1):        //Joystic Arriba Derecha
            vel_I=vel_max*module;
            vel_D=vel_max*module*((PI/2-angle)/(PI/2));
        break;

        case(2):        //Joystic Arriba Izquierda
            vel_I=vel_max*module*((PI/2+angle)/(PI/2));
            vel_D=vel_max*module;
        break;

        case(3):        //Joystic Abajo Derecha
            vel_I=-vel_max*module;
            vel_D=-vel_max*module*((PI/2+angle)/(PI/2));
        break;

        case(4):        //Joystic Abajo Izquierda
            vel_I=-vel_max*module*((PI/2-angle)/(PI/2));
            vel_D=-vel_max*module;
        break;
    }

    //Convertir
    vel_I_= QLocale().toString(vel_I);
    vel_D_= QLocale().toString(vel_D);

    //Actualiza motor speed left
    myData.motor_driver_data.motor_speed_left = vel_I_;
    //SendDataMotor("motor_speed_left",vel_I_);

    //Update motor speed right
    myData.motor_driver_data.motor_speed_right = vel_D_;
    //SendDataMotor("motor_speed_right",vel_D_);
}
