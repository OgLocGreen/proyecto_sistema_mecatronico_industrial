#include "mainwindow.h"
#include "ui_mainwindow.h"
//#include "options.h"
//#include "camwindow.h"
//#include "ui_camwindow.h"
//#include "socket.h"

//#include <QPixmap>
//#include <QImage>
//#include <QFileDialog>
//#include <QPainter>
//#include <QMouseEvent>


bool MainWindow::checkConnection()
{
    bool ret;
    //if(socket.state()==3)
        ret = 1;
   // else
        ret = 0;

    return ret;
}

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


    ui->qCam1Up_pushButton->setIcon(QIcon(":/images/arrow_up.png"));
    ui->qCam1Down_pushButton->setIcon(QIcon(":/images/arrow_down.png"));
    ui->qBBB_pushButton->setIcon(QIcon(":/images/BBB2.png"));
    ui->qESP1_pushButton->setIcon(QIcon(":/images/ESP32_CAM2.png"));
    ui->qESP2_pushButton->setIcon(QIcon(":/images/ESP32_CAM2.png"));
    ui->qVideoWindow_pushButton->setIcon(QIcon(":/images/newWindow.PNG"));
    ui->qPuls_pushButton->setIcon(QIcon(":/images/pulsador.png"));



    ui->qBattery_label->setPixmap(QPixmap(":/images/Battery_full.svg"));
    ui->qLight_label->setPixmap(QPixmap(":/images/light_on.svg"));

    onUpdateJoystick(QPointF(ui->qJoystick_label->width()/2,ui->qJoystick_label->height()/2));

    // connect timerPulse
    QObject::connect(&timerPulse,SIGNAL(timeout()),
                     this, SLOT(onTimerPulse())
                     );

    // connect timerBack
    QObject::connect(&timerBack,SIGNAL(timeout()),
                     this, SLOT(onTimerBack())
                     );

    // connect LogFile
    QObject::connect(&socket,SIGNAL(newLogFile(QString)),this, SLOT(onNewLogFile(QString)));

    // connect JoystickPos
    QObject::connect(this,SIGNAL(sendTrajectoryPos()),this, SLOT(onSendTrajectoryPos()));

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::mouseMoveEvent(QMouseEvent *event)
{
    //qDebug() << event->pos();
    QPointF clickedPos = event->position()- ui->qJoystick_label->pos() - ui->centralwidget->pos();

    clickedPos.setY(clickedPos.y()-26);

    if(pow(clickedPos.x()-ui->qJoystick_label->width()/2,2) + pow(clickedPos.y()-ui->qJoystick_label->height()/2,2) <= pow(90,2))

    {
            joystickPos=clickedPos;
            onUpdateJoystick(joystickPos);
            emit sendTrajectoryPos();
    }
}

void MainWindow::mouseReleaseEvent(QMouseEvent *event)
{
    if (joystickPos.x() !=ui->qJoystick_label->width()/2 || joystickPos.y() != ui->qJoystick_label->height()/2)
    {
        joystickPos = QPointF(ui->qJoystick_label->width()/2,ui->qJoystick_label->height()/2);
        onUpdateJoystick(joystickPos);
        emit sendTrajectoryPos();
    }

}

void MainWindow::mousePressEvent(QMouseEvent *event)
{
    QPointF clickedPos = event->position()- ui->qJoystick_label->pos() - ui->centralwidget->pos();

    clickedPos.setY(clickedPos.y()-26);

    if(pow(clickedPos.x()-ui->qJoystick_label->width()/2,2) + pow(clickedPos.y()-ui->qJoystick_label->height()/2,2) <= pow(90,2))

    {
            joystickPos=clickedPos;
            onUpdateJoystick(joystickPos);
            emit sendTrajectoryPos(); // STILL HAVE TO CONNECT SIGNAL WITH BBB
    }
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

void MainWindow::onNewLogFile(QString logText)
{
    ui->qLog_textEdit->setText(logText);
}

void MainWindow::onUpdateJoystick(QPointF pos)
{

    QPixmap pixmap(ui->qJoystick_label->size());
    QPainter painter(&pixmap);

    painter.setBrush(Qt::white);
    painter.drawRect(0,0, ui->qJoystick_label->width(),ui->qJoystick_label->height());

    QPen pen(Qt::SolidLine);
    pen.setWidth(0);
    pen.setColor(Qt::gray);
    painter.setPen(pen);
    painter.setBrush(Qt::gray);

    painter.drawEllipse(QPointF(ui->qJoystick_label->width()/2,ui->qJoystick_label->height()/2),90,90);

    painter.setBrush(Qt::darkGray);
    painter.drawEllipse(pos,40,40);

    ui->qJoystick_label->setPixmap(pixmap);

}

void MainWindow::onSendTrajectoryPos()
{
    if (joystickPos.x()<=ui->qJoystick_label->width()/2)
        trajectoryPos.setX(joystickPos.x()-ui->qJoystick_label->width()/2);
    else
        trajectoryPos.setX(joystickPos.x()-ui->qJoystick_label->width()/2);

    if (joystickPos.y()<=ui->qJoystick_label->width()/2)
        trajectoryPos.setY(ui->qJoystick_label->width()/2-joystickPos.y());
    else
        trajectoryPos.setY(ui->qJoystick_label->width()/2-joystickPos.y());

    //socket.sendmsg("<joystickPos>("+QString::number(trajectoryPos.x())+","+QString::number(trajectoryPos.y())+")");
    //qDebug() << "<trajectoryPos>("+QString::number(trajectoryPos.x())+","+QString::number(trajectoryPos.y())+")</trajectoryPos>";
}


void MainWindow::on_q_toolButton_Options_triggered(QAction *arg1)
{


}


void MainWindow::on_q_toolButton_Options_clicked()
{
    Options opt;
    opt.setModal(true);

    if(opt.exec() == QDialog::Accepted)
    {
        BBBaddress = QHostAddress(opt.getBBBip());
        ESPfrontAddress = QHostAddress(opt.getESPfrontIp());
        ESPtopAddress = QHostAddress(opt.getESPtopIp());

        BBBport = quint16(opt.getBBBport());
        ESPfrontPort = quint16(opt.getESPfrontPort());
        ESPtopPort = quint16(opt.getESPtopPort());
    }

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
//    timerBack.stop();
//    timerPulse.start(25);

    socket.sendmsg("<pulsar>true</pulsar>");

}


void MainWindow::on_qPuls_pushButton_released()
{
//    timerPulse.stop();
//    timerBack.start(10);

    socket.sendmsg("<pulsar>false</pulsar>");
}




void MainWindow::on_qConnect_pushButton_clicked()
{
    //ui->qConnect_pushButton->setVisible(false);
    //ui->qCam1_RadioButton->setChecked(true);

    socket.Test(BBBaddress,BBBport);
    //socket.sendmsg("hello from Pc");

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


void MainWindow::on_qStatus_action_triggered()
{
    //open widget of Juan with Rover status (battery level, ...)
}


void MainWindow::on_qTraj_action_triggered()
{
    //open widget of Juan with visualizin the trajectory
}

