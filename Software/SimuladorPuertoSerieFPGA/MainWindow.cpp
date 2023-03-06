#include "MainWindow.h"
#include "ui_MainWindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QObject::connect(this,SIGNAL(SendDataToFPGA(QString)),&myFpga,SLOT(OnDataRecievedFromBBB(QString)));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_qSendLine_pushButton_clicked() /* Sends */
{
    QString cmd = ui->qBufferEnvio->text();
    emit SendDataToFPGA(cmd);
};

