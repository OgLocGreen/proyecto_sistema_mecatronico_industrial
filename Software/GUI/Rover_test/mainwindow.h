#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "camwindow.h"
#include "socket.h"

#include "options.h"
#include "camwindow.h"
#include "ui_camwindow.h"
#include "socket.h"
#include "timerdialog.h"

#include <QPixmap>
#include <QImage>
#include <QFileDialog>
#include <QPainter>
#include <QMouseEvent>

#include <QMainWindow>
#include <QPixmap>
#include <QImage>
#include <QTimer>
#include <QFileDialog>
#include <QHostAddress>
#include <QMediaPlayer>
#include <QUrl>
#include <QVideoWidget>
//#include <QWebView>

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
    QTimer timerElev;
    QTimer timerElevBack;
    int elevVal;

    QTimer timerJoystick;
    QTimer timerConnErr;
    int connErrVal;

    QString logText;

    QFileDialog fpath;
    QPixmap video;
    CamWindow cam1;
    CamWindow cam2;

    QString BBBaddress;
    quint16 BBBport;
    QString ESPfrontAddress;
    quint16 ESPfrontPort;
    QString ESPtopAddress;
    quint16 ESPtopPort;
    Socket mTest;
    Socket socketBBB;

    QPointF joystickPos;
    QPointF trajectoryPos;

    int controllerTime, sensorTime, broadcastTime, logfileTime;

    // for ESP32-CAM
    QByteArray recv;
    QTcpSocket cli_html,cli_stream;
    bool ESPfrontConnectedBool = false;
    bool ESPtopConnectedBool = false;
    QMediaPlayer *player;
    QVideoWidget *videoWidget;

    Options opt;

    void TryConnectionWithESPServer(char* SERVER_ADDRESS);
    void SetESPCameraResolution(int res, char* SERVER_ADDRESS);  // Ver resoluciones disponibles en #defines de MainWindow.cpp

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

signals:
    void sendTrajectoryPos();

protected:
    virtual void mousePressEvent(QMouseEvent *event);
    virtual void mouseDoubleCLickEvent(QMouseEvent *event);
    virtual void mouseMoveEvent(QMouseEvent *event);
    virtual void mouseReleaseEvent(QMouseEvent *event);

private slots:
    void onTimerPulse();
    void onTimerBack();
    void onTimerElev();
    void onTimerElevBack();
    void onTimerJoystick();
    void onTimerConnErr();
    void onNewLogFile(QString logText);
    void onUpdateJoystick(QPointF pos);
    void onSendTrajectoryPos();

    void OnESPDataReceived();
    void OnESPDisconnected();
    void OnESPError(QTcpSocket::SocketError err);

    void onBBBdisconnected();
    void onBBBconnected();


    void on_qCam1_RadioButton_toggled(bool checked);

    void on_qCam2_radioButton_toggled(bool checked);

    void on_qElev_verticalSlider_valueChanged(int value);

    void on_qElev_spinBox_valueChanged(int arg1);

    void on_qElev_spinBox_editingFinished();

    void on_qPuls_pushButton_pressed();

    void on_qPuls_pushButton_released();


    void on_qESP1_pushButton_clicked();

    void on_qESP2_pushButton_clicked();

    void on_qTraj_pushButton_clicked();

    void on_qLog_pushButton_clicked();

    void on_qStatus_action_triggered();

    void on_qVel_spinBox_valueChanged(int arg1);

    void on_qElevUp_pushButton_2_pressed();

    void on_qElevUp_pushButton_2_released();

    void on_qElevDown_pushButton_2_pressed();

    void on_qElevDown_pushButton_2_released();

    void on_qCam1Up_pushButton_pressed();

    void on_qCam1Down_pushButton_pressed();

    void on_qCam1Down_pushButton_released();

    void on_qCam1Up_pushButton_released();

    void on_qLED_pushButton_clicked();

    void on_qAlarm_pushButton_clicked();

    void on_qConnections_action_triggered();

    void on_qTimer_action_triggered();

    void on_qConnect_pushButton_2_clicked();

    void on_qDisconnect_pushButton_clicked();

    void on_qRoom_checkBox_stateChanged(int arg1);

    void on_pushButton_pressed();

    void on_ATRASpushButton_3_pressed();

    void on_ALANTEpushButton_pressed();

    void on_DCHApushButton_4_pressed();

    void on_IZQpushButton_2_pressed();

    void on_ALANTEpushButton_released();

    void on_ATRASpushButton_3_released();

    void on_DCHApushButton_4_released();

    void on_IZQpushButton_2_released();

private:
    Ui::MainWindow *ui;

};

#endif // MAINWINDOW_H
