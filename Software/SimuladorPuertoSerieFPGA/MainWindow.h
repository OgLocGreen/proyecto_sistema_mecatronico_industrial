#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "Fpga.h"

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
    void SendDataToFPGA(QString cmd);

private slots:
    void on_qSendLine_pushButton_clicked();

private:
    Ui::MainWindow *ui;
    Fpga myFpga;
};
#endif // MAINWINDOW_H
