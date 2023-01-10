#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSerialPort>

#include "MotorDriver.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

signals:

    void SendDataToMotorDriver(QString request, QString value, QString motorselector);

private slots:

    void on_qSendCmd_pushButton_clicked();

    void on_qSendManualCmd_pushButton_clicked();

    void OnManualDriverReception();

private:
    Ui::MainWindow *ui;

    QSerialPort serial_manual;

    QString request;
    QString value;
    QString motorselector;

    MotorDriver myMotor;
};
#endif // MAINWINDOW_H