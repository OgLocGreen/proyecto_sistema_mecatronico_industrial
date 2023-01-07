#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "options.h"
#include "camwindow.h"
#include "ui_camwindow.h"

#include <QPixmap>
#include <QImage>
#include <QFileDialog>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    cam1Angle=0;
    pulseVal=0;

    ui->qESP1_label->setStyleSheet("QLabel {color : red; }");
    ui->qESP2_label->setStyleSheet("QLabel {color : red; }");
    ui->qBBB_label->setStyleSheet("QLabel {color : green; }");

    // connect timerPulse
    QObject::connect(&timerPulse,SIGNAL(timeout()),
                     this, SLOT(onTimerPulse())
                     );

    // connect timerBack
    QObject::connect(&timerBack,SIGNAL(timeout()),
                     this, SLOT(onTimerBack())
                     );

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::onTimerPulse()
{
    if(pulseVal<100)
        pulseVal=pulseVal+1;

    ui->qPuls_progressBar->setValue(pulseVal);
}

void MainWindow::onTimerBack()
{
    if(pulseVal>0)
    {
        pulseVal=pulseVal-1;
        ui->qPuls_progressBar->setValue(pulseVal);
    }
    else
        timerBack.stop();

}


void MainWindow::on_q_toolButton_Options_triggered(QAction *arg1)
{


}


void MainWindow::on_q_toolButton_Options_clicked()
{
    Options opt;
    opt.setModal(true);
    opt.exec();
}


void MainWindow::on_qCam1_RadioButton_toggled(bool checked)
{
    if (checked==true)
    {
        if(video.load("./Cam_Rover.jpeg"))
        {
            ui->qVideo_label->setPixmap(video);
        }

    }
}


void MainWindow::on_qCam2_radioButton_toggled(bool checked)
{
    if (checked==true)
    {
        ui->qVideo_label->setText("Video loading...");

        if(video.load("./Cam_Pulsador.jpeg"))
        {
            ui->qVideo_label->setPixmap(video);
        }

    }
}


void MainWindow::on_qVideoWindow_pushButton_clicked()
{
    if(ui->qCam1_RadioButton->isChecked()==true)
    {
        cam1.exec();

        //ui->qCa
    }

    else if(ui->qCam2_radioButton->isChecked()==true)
    {
        cam2.exec();
    }
}


void MainWindow::on_qCam1Up_pushButton_clicked()
{
    if(cam1Angle<10)
    {
        cam1Angle=cam1Angle+1;
        ui->qCam1Pos_lineEdit->setText(QString("%1").arg(cam1Angle));
    }
}


void MainWindow::on_qCam1Down_pushButton_clicked()
{
    if(cam1Angle>-10)
    {
        cam1Angle=cam1Angle-1;
        ui->qCam1Pos_lineEdit->setText(QString("%1").arg(cam1Angle));
    }
}




void MainWindow::on_qElev_verticalSlider_valueChanged(int value)
{
    ui->qElev_spinBox->setValue(value);
}


void MainWindow::on_qElev_spinBox_valueChanged(int arg1)
{
    //ui->qElev_verticalSlider->setValue(arg1);
}


void MainWindow::on_qElev_spinBox_editingFinished()
{
    ui->qElev_verticalSlider->setValue(ui->qElev_spinBox->value());
}


void MainWindow::on_qPuls_pushButton_pressed()
{
    timerBack.stop();
    timerPulse.start(25);
}


void MainWindow::on_qPuls_pushButton_released()
{
    timerPulse.stop();
    timerBack.start(10);
}




void MainWindow::on_qConnect_pushButton_clicked()
{
    ui->qConnect_pushButton->setVisible(false);
    ui->qCam1_RadioButton->setChecked(true);
}


void MainWindow::on_qESP1_pushButton_clicked()
{
    ui->qESP1_label->setText("CONNECTED");
    ui->qESP1_label->setStyleSheet("QLabel {color : green; }");
}


void MainWindow::on_qESP2_pushButton_clicked()
{
    ui->qESP2_label->setText("CONNECTED");
    ui->qESP2_label->setStyleSheet("QLabel {color : green; }");
}


void MainWindow::on_qTraj_pushButton_clicked()
{
    fpath.getSaveFileName(
                this,
                tr("Save File"),
                "C:\\Studium\\EU4M\\03_Semester\\Proyecto_Rover\\GUI\\GUI_test\\Export_Files");
}


void MainWindow::on_qLog_pushButton_clicked()
{
    fpath.getSaveFileName(
                this,
                tr("Save File"),
                "C:\\Studium\\EU4M\\03_Semester\\Proyecto_Rover\\GUI\\GUI_test\\Export_Files",
                "Text File(*.txt)");
}

