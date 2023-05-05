#include "MainWindow.h"
#include "ui_MainWindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QObject::connect(this,SIGNAL(SendDataToFPGA(QString,QString,QString,QString)),&myFpga,SLOT(OnDataRecievedFromBBB(QString,QString,QString,QString)));
    QObject::connect(&timerSend,SIGNAL(timeout()),this,SLOT(OnTimerSend()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_qSendLine_pushButton_clicked() /* Sends */
{    
    if(timerSend.isActive()){
        timerSend.stop();
    }
    else{
        timerSend.start(500);
    }
};

void MainWindow::OnTimerSend(){

    QString enable_scissor = ui->qenableScissorSpinBox->text();
    QString enable_servo = ui->qenableServoSpinBox->text();
    QString dir_scissor = ui->qdirScissorSpinBox->text();
    QString dir_servo = ui->qdirServoSpinBox->text();

    emit SendDataToFPGA(enable_scissor,enable_servo,dir_scissor,dir_servo);
}

