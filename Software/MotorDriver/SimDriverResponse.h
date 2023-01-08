#ifndef SIMDRIVERRESPONSE_H
#define SIMDRIVERRESPONSE_H

#include <QMainWindow>

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

private:
    Ui::MainWindow *ui;

    QString request;
    QString value;
    QString motorselector;

    MotorDriver myMotor;
};
#endif // SIMDRIVERRESPONSE_H
