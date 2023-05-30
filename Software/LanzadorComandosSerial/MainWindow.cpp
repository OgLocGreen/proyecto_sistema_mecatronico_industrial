
#include "MainWindow.h"
#include "ui_MainWindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    serial.setBaudRate(QSerialPort::Baud115200);
    serial.setPortName("COM6");
    QObject::connect(&serial,SIGNAL(readyRead()),this,SLOT(onSerialReadyRead()));
    serial.open(QSerialPort::ReadWrite);
    if(!serial.isOpen()){
        qDebug() << "No conectado al puerto serie";
        qDebug() << serial.errorString(); /* emite el error del puerto */
    }
    else{
        qDebug() << "Conectado al puerto serie";
    }
}

MainWindow::~MainWindow()
{
    serial.close();
    delete ui;
}

void MainWindow::on_qEnviaComando_pushButton_clicked()
{
    if(!serial.isOpen()){
        qDebug() << "No conectado al puerto serie";
        qDebug() << serial.errorString(); /* emite el error del puerto */
    }
    else{
        QString cmd_str = ui->qComando_LineEdit->text(); /* recojo comando */
        QByteArray cmd = cmd_str.toLatin1(); /* lo paso a bytearray */
        serial.write(cmd); /* mando comando por el puerto */
        serial.waitForReadyRead(500);
    };
}

void MainWindow::onSerialReadyRead() /* Lectura del comando desde el puerto serie */
{
    QString answ_str(serial.readAll());
    qDebug() << answ_str;
}

