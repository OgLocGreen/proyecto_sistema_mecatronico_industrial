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

    void on_qParaMD_pushButton_clicked();

    void on_qIzda_pushButton_clicked(bool checked);

    void on_qIzda_pushButton_pressed();

    void on_qDcha_pushButton_2_pressed();

    void on_qAvantiVConst_pushButton_3_pressed();

    void on_qAtras_pushButton_4_pressed();

    void on_qIzda_pushButton_released();

    void on_qDcha_pushButton_2_released();

    void on_qAvantiVConst_pushButton_3_released();

    void on_qAtras_pushButton_4_released();

private:
    Ui::MainWindow *ui;
    Fpga myFpga;
    MotorDriver myMotorDrivers;

    QTimer timerSend;
    QTimer timerSendMD;
};
#endif // MAINWINDOW_H
