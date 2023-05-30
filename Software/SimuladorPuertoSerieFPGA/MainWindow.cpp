#include "MainWindow.h"
#include "ui_MainWindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QObject::connect(this,SIGNAL(SendDataToFPGA(QString,QString,QString,QString,QString,QString)),&myFpga,SLOT(OnDataRecievedFromBBB(QString,QString,QString,QString,QString,QString)));
    QObject::connect(&timerSend,SIGNAL(timeout()),this,SLOT(OnTimerSend()));
    QObject::connect(&timerSendMD,SIGNAL(timeout()),this,SLOT(OnTimerMDSend()));
    QObject::connect(this,SIGNAL(SendDataToMotorDriver(QString,QString)),&myMotorDrivers,SLOT(OnNewDataRecieved(QString,QString)));

    QString enable_scissor = ui->qenableScissorSpinBox->text();
    QString enable_servo = ui->qenableServoSpinBox->text();
    QString dir_scissor = ui->qdirScissorSpinBox->text();
    QString dir_servo = ui->qdirServoSpinBox->text();
    QString cam_value = "disabled";
    QString enable_fast = "disabled";

    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);

    QString right_percent_speed = QString::number(0);
    QString left_percent_speed = QString::number(0);

    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_qSendLine_pushButton_clicked() /* Sends */
{    
//    if(timerSend.isActive()){
//        timerSend.stop();
//    }
//    else{
//        timerSend.start(1000);
//    }

    QString enable_scissor = ui->qenableScissorSpinBox->text();
    QString enable_servo = ui->qenableServoSpinBox->text();
    QString dir_scissor = ui->qdirScissorSpinBox->text();
    QString dir_servo = ui->qdirServoSpinBox->text();
    QString cam_value = "disabled";
    QString enable_fast = "disabled";

    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
};

void MainWindow::OnTimerSend(){

    QString enable_scissor = ui->qenableScissorSpinBox->text();
    QString enable_servo = ui->qenableServoSpinBox->text();
    QString dir_scissor = ui->qdirScissorSpinBox->text();
    QString dir_servo = ui->qdirServoSpinBox->text();
    QString cam_value = "disabled";
    QString enable_fast = "disabled";

    emit SendDataToFPGA(dir_scissor,enable_scissor,enable_servo,dir_servo,cam_value,enable_fast);
}

void MainWindow::OnTimerMDSend()
{
//    QString right_percent_speed = QString::number(ui->qRighthmotor->value());
//    QString left_percent_speed = QString::number(ui->qLeftMotor->value());
//    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
}


void MainWindow::on_qStartSendMD_pushButton_clicked()
{
//    if(timerSendMD.isActive()){
//        timerSendMD.stop();
//        QString right_percent_speed = "0";
//        QString left_percent_speed = "0";
//        emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
//    }
//    else{
//        timerSendMD.start(1000);
//    }
//    QString right_percent_speed = QString::number(ui->qRighthmotor->value());
//    QString left_percent_speed = QString::number(ui->qLeftMotor->value());
//    emit SendDataToMotorDriver(right_percent_speed,left_percent_speed);
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

