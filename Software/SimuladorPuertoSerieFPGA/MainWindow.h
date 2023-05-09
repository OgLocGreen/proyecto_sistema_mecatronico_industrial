#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "Fpga.h"
#include "MotorDriver.h"
#include <QTimer>

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
    void SendDataToFPGA(QString dir_scissor,QString enable_scissor,QString enable_servo,QString dir_servo,QString cam_value,QString enable_fast);
    void SendDataToMotorDriver(QString right_motor_speed_prcnt, QString left_motor_speed_prcnt);
private slots:
    void on_qSendLine_pushButton_clicked();
    void OnTimerSend();
    void OnTimerMDSend();

    void on_qStartSendMD_pushButton_clicked();

private:
    Ui::MainWindow *ui;
    Fpga myFpga;
    MotorDriver myMotorDrivers;

    QTimer timerSend;
    QTimer timerSendMD;
};
#endif // MAINWINDOW_H
