#include "MainWindow.h"
#include "ui_MainWindow.h"

#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    //connect(&serial_manual,SIGNAL(readyRead()),this,SLOT(OnManualDriverReception()));
    connect(this,SIGNAL(SendDataToMotorDriver(QString,QString)),&myMotor,SLOT(OnNewDataRecieved(QString,QString)));
    connect(&timer,SIGNAL(timeout()),this,SLOT(OnTimer()));

}

MainWindow::~MainWindow()
{
    emit SendDataToMotorDriver("0","0");
    delete ui;
}

// PUBLIC SLOT //

void MainWindow::on_qSendCmd_pushButton_clicked()
{
    /* Cuando se hace click en el botón, se envía el comando al MotorDriver (como si fuera desde la BBB) */

    left_speed = ui->qLeftSpeed_lineEdit->text();
    right_speed = ui->qRightSpeed_lineEdit->text();

    ui->qSerialMonitor_textEdit->setText("Right speed: "+right_speed+"  Value: "+left_speed);

    /* Emite señal SendDataToMotorDriver con el userrequest y el valor */
    emit SendDataToMotorDriver(right_speed,left_speed);
}

void MainWindow::on_qSendManualCmd_pushButton_clicked()
{
    QString request = ui->qManualCmd_lineEdit->text();
    myMotor.SendCmd2Driver(request);
    ui->qAnswManualCmd_lineEdit->setText(myMotor.ReadAnswFromDriver());
}

void MainWindow::OnTimer()
{
    int motor_izq = ui->verticalSlider->value();
    int motor_dcho = ui->verticalSlider_2->value();

    QString motor_izq_str = QString::number(motor_izq);
    QString motor_dcho_str = QString::number(motor_dcho);

    emit SendDataToMotorDriver(motor_izq_str,motor_dcho_str);
}


void MainWindow::on_pushButton_clicked()
{
    if(timer.isActive()){
        timer.stop();
        emit SendDataToMotorDriver("0","0");
    }
    else{
        timer.start(100);
    }
}

