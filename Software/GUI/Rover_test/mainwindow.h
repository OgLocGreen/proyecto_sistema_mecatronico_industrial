#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "camwindow.h"
#include "socket.h"

#include "options.h"
#include "camwindow.h"
#include "ui_camwindow.h"
#include "socket.h"

#include <QPixmap>
#include <QImage>
#include <QFileDialog>
#include <QPainter>
#include <QMouseEvent>
//#include <QWebView>
//#include <QtWebEngineWidgets/QtWebEngineWidgets>

#include <QMainWindow>
#include <QPixmap>
#include <QImage>
#include <QTimer>
#include <QFileDialog>
#include <QHostAddress>
#include <QMediaPlayer>
#include <QUrl>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT
private:
    QTimer timerPulse;
    QTimer timerBack;
    int pulseVal;

    QString logText;

    QFileDialog fpath;
    QPixmap video;
    CamWindow cam1;
    CamWindow cam2;
    int cam1Angle;

    QHostAddress BBBaddress;
    quint16 BBBport;
    QHostAddress ESPfrontAddress;
    quint16 ESPfrontPort;
    QHostAddress ESPtopAddress;
    quint16 ESPtopPort;
    Socket mTest;
    Socket socket;

    QPointF joystickPos;
    QPointF trajectoryPos;

    bool checkConnection();


public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

signals:
    void sendTrajectoryPos();

protected:
    virtual void mousePressEvent(QMouseEvent *event);
    virtual void mouseMoveEvent(QMouseEvent *event);
    virtual void mouseReleaseEvent(QMouseEvent *event);

private slots:
    void onTimerPulse();
    void onTimerBack();
    void onNewLogFile(QString logText);
    void onUpdateJoystick(QPointF pos);
    void onSendTrajectoryPos();


    void on_q_toolButton_Options_triggered(QAction *arg1);

    void on_q_toolButton_Options_clicked();

    void on_qCam1_RadioButton_toggled(bool checked);

    void on_qCam2_radioButton_toggled(bool checked);

    void on_qVideoWindow_pushButton_clicked();

    void on_qCam1Up_pushButton_clicked();

    void on_qCam1Down_pushButton_clicked();


    void on_qElev_verticalSlider_valueChanged(int value);

    void on_qElev_spinBox_valueChanged(int arg1);

    void on_qElev_spinBox_editingFinished();

    void on_qPuls_pushButton_pressed();

    void on_qPuls_pushButton_released();


    void on_qConnect_pushButton_clicked();

    void on_qESP1_pushButton_clicked();

    void on_qESP2_pushButton_clicked();

    void on_qTraj_pushButton_clicked();

    void on_qLog_pushButton_clicked();

    void on_qStatus_action_triggered();

    void on_qTraj_action_triggered();

private:
    Ui::MainWindow *ui;

};
#endif // MAINWINDOW_H
