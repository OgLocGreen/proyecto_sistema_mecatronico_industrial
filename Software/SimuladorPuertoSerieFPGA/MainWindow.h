#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "Fpga.h"
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
private slots:
    void on_qSendLine_pushButton_clicked();
    void OnTimerSend();

private:
    Ui::MainWindow *ui;
    Fpga myFpga;

    QTimer timerSend;
};
#endif // MAINWINDOW_H
