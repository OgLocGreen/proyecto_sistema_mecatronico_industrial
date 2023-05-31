#include "MainWindow.h"
#include "ui_MainWindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QObject::connect(this,SIGNAL(SendDataToFPGA(QString,QString,QString,QString,QString,QString)),&myFpga,SLOT(OnDataRecievedFromBBB(QString,QString,QString,QString,QString,QString)));
    QObject::connect(this,SIGNAL(SendDataToMotorDriver(QString,QString)),&myMotorDrivers,SLOT(OnNewDataRecieved(QString,QString)));

    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_qParaMD_pushButton_clicked()
{
    QString right_percent_speed = QString::number(0);
    QString left_percent_speed = QString::number(0);
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qIzda_pushButton_pressed()
{
    QString right_percent_speed = (ui->qPercSpeed_spinBox->text());
    QString left_percent_speed ="-"+(ui->qPercSpeed_spinBox->text());
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qDcha_pushButton_2_pressed()
{
    QString right_percent_speed ="-"+(ui->qPercSpeed_spinBox->text());
    QString left_percent_speed =(ui->qPercSpeed_spinBox->text());
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qAvantiVConst_pushButton_3_pressed()
{
    QString right_percent_speed =(ui->qPercSpeed_spinBox->text());
    QString left_percent_speed =(ui->qPercSpeed_spinBox->text());
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qAtras_pushButton_4_pressed()
{
    QString right_percent_speed ="-"+(ui->qPercSpeed_spinBox->text());
    QString left_percent_speed ="-"+(ui->qPercSpeed_spinBox->text());
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qIzda_pushButton_released()
{
    QString right_percent_speed = QString::number(0);
    QString left_percent_speed = QString::number(0);
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qDcha_pushButton_2_released()
{
    QString right_percent_speed = QString::number(0);
    QString left_percent_speed = QString::number(0);
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qAvantiVConst_pushButton_3_released()
{
    QString right_percent_speed = QString::number(0);
    QString left_percent_speed = QString::number(0);
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qAtras_pushButton_4_released()
{
    QString right_percent_speed = QString::number(0);
    QString left_percent_speed = QString::number(0);
    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qIzda_pushButton_clicked(bool checked)
{
    //Do nothing
}


/* BOTONES TIJERA Y SERVO */
void MainWindow::on_qSUBETIJERA_pushButton_pressed()
{
    enable_scissor = QString::number(0);
    dir_scissor = QString::number(1);
    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}


void MainWindow::on_qSUBETIJERA_pushButton_released()
{
    enable_scissor = QString::number(1);
    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}


void MainWindow::on_qBAJATIJERA_pushbutton_pressed()
{
    enable_scissor = QString::number(0);
    dir_scissor = QString::number(0);
    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}


void MainWindow::on_qBAJATIJERA_pushbutton_released()
{
    enable_scissor = QString::number(1);
    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}

void MainWindow::on_qSUBESERVO_pushbutton_pressed()
{
    cam_value_int = cam_value_int-1;
    if(cam_value_int<0) cam_value_int = 0;
    cam_value = QString::number(cam_value_int);
    ui->qValueSERVOANGLE_spinBox_2->setValue(cam_value_int);
    SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}

void MainWindow::on_qBAJASERVO_pushButton_4_pressed()
{
    cam_value_int = cam_value_int+1;
    if(cam_value_int>31) cam_value_int = 31;
    cam_value = QString::number(cam_value_int);
    ui->qValueSERVOANGLE_spinBox_2->setValue(cam_value_int);
    SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}

