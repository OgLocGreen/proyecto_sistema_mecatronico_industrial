#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "camwindow.h"

#include <QMainWindow>
#include <QPixmap>
#include <QImage>
#include <QTimer>
#include <QFileDialog>

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

    QFileDialog fpath;
    QPixmap video;
    CamWindow cam1;
    CamWindow cam2;
    int cam1Angle;


public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void onTimerPulse();
    void onTimerBack();


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

private:
    Ui::MainWindow *ui;

};
#endif // MAINWINDOW_H
