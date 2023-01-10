#include "MainWindow.h"
#include "ui_MainWindow.h"

#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->qMotorSelector_comboBox->addItem("*");
    ui->qMotorSelector_comboBox->addItem("1");
    ui->qMotorSelector_comboBox->addItem("2");
    ui->qMotorSelector_comboBox->addItem("3");
    ui->qMotorSelector_comboBox->addItem("4");
    ui->qMotorSelector_comboBox->addItem("5");

    connect(&serial_manual,SIGNAL(readyRead()),this,SLOT(OnManualDriverReception()));
    connect(this,SIGNAL(SendDataToMotorDriver(QString,QString,QString)),&myMotor,SLOT(OnNewDataRecieved(QString,QString,QString)));
}

MainWindow::~MainWindow()
{
    delete ui;
}

// PUBLIC SLOT //

void MainWindow::on_qSendCmd_pushButton_clicked()
{
    /* Cuando se hace click en el botón, se envía el comando al MotorDriver (como si fuera desde la BBB) */

    request = ui->qCmdLine_lineEdit->text();
    value = ui->qValue_lineEdit->text();
    motorselector = ui->qMotorSelector_comboBox->currentText();

    ui->qSerialMonitor_textEdit->setText("Request: "+request+"  Value: "+value);

    /* Emite señal SendDataToMotorDriver con el userrequest y el valor */
    emit SendDataToMotorDriver(request,value,motorselector);
}

void MainWindow::on_qSendManualCmd_pushButton_clicked()
{
    QString request = ui->qManualCmd_lineEdit->text();
    myMotor.SendCmd2Driver(request);
    ui->qAnswManualCmd_lineEdit->setText(myMotor.ReadAnswFromDriver());
}

void MainWindow::OnManualDriverReception()
{
    QString answ = QString(serial_manual.readAll());
    ui->qAnswManualCmd_lineEdit->setText(answ);
}

