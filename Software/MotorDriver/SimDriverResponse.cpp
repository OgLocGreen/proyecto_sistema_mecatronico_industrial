#include "SimDriverResponse.h"
#include "ui_MainWindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->qMotorSelector_comboBox->addItem("*");
    ui->qMotorSelector_comboBox->addItem("1");
    ui->qMotorSelector_comboBox->addItem("2");

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

