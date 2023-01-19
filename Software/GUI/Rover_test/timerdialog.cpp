#include "timerdialog.h"
#include "ui_timerdialog.h"

TimerDialog::TimerDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::TimerDialog)
{
    ui->setupUi(this);
}

TimerDialog::~TimerDialog()
{
    delete ui;
}

int TimerDialog::getControllerTime()
{
    return ui->qController_spinBox->value();
}

int TimerDialog::getSensorTime()
{
    return ui->qSensor_spinBox->value();
}

int TimerDialog::getBroadcastTime()
{
    return ui->qBroadcast_spinBox->value();
}

int TimerDialog::getLogfileTime()
{
    return ui->qLogfile_spinBox->value();
}

void TimerDialog::setTimes(int controllerTime, int sensorTime, int broadcastTime, int logfileTime)
{
    ui->qController_spinBox->setValue(controllerTime);
    ui->qSensor_spinBox->setValue(sensorTime);
    ui->qBroadcast_spinBox->setValue(broadcastTime);
    ui->qLogfile_spinBox->setValue(logfileTime);
}
