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
private:
    QString enable_scissor = QString::number(1);
    QString enable_servo = QString::number(0);
    QString dir_scissor = QString::number(0);
    QString dir_servo = QString::number(0);
    int cam_value_int = 20;
    QString cam_value = QString::number(cam_value_int);
    QString enable_fast = "disabled";

    Ui::MainWindow *ui;
    Fpga myFpga;
    MotorDriver myMotorDrivers;

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

signals:
    void SendDataToFPGA(QString dir_scissor,QString enable_scissor,QString enable_servo,QString dir_servo,QString cam_value,QString enable_fast);
    void SendDataToMotorDriver(QString right_motor_speed_prcnt, QString left_motor_speed_prcnt);
private slots:
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

    void on_qSUBETIJERA_pushButton_pressed();

    void on_qSUBETIJERA_pushButton_released();

    void on_qBAJATIJERA_pushbutton_pressed();

    void on_qBAJATIJERA_pushbutton_released();

    void on_qSUBESERVO_pushbutton_pressed();

    void on_qBAJASERVO_pushButton_4_pressed();

};
#endif // MAINWINDOW_H
