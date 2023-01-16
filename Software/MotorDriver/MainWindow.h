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

    void SendDataToMotorDriver(QString right_motor_speed_prcnt, QString left_motor_speed_prcnt);

private slots:

    void on_qSendCmd_pushButton_clicked();
    void on_qSendManualCmd_pushButton_clicked();

private:
    Ui::MainWindow *ui;

    QString right_speed, left_speed;

    MotorDriver myMotor;
};
#endif // MAINWINDOW_H
