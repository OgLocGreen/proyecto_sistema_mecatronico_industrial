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

#define LOG_COMM_EVENTS     1
//#define SERVER_ADDRESS_ESP_FRONT        "192.168.100.201"
//#define SERVER_ADDRESS_ESP_TOP          "192.168.100.202"
//#define SERVER_PORT_HTML    80
#define SERVER_PORT_STREAM  81

//#define CAM_RESOLUTION_QVGA_320x240     5
//#define CAM_RESOLUTION_VGA_640x480     8
//#define CAM_RESOLUTION_SVGA_800x600     9
//#define CAM_RESOLUTION_XGA_1024x768     10


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    BBBaddress = "192.168.100.23";
    BBBport = 5000;
    ESPfrontAddress = "192.168.100.201";
    ESPfrontPort = 81;
    ESPtopAddress= "192.168.100.202";
    ESPtopPort = 81;

    controllerTime = 10;
    sensorTime = 10;
    broadcastTime = 10;
    logfileTime = 10000;

    opt.setIPs(BBBaddress, ESPfrontAddress, ESPtopAddress);
    opt.setPorts(BBBport,ESPfrontPort,ESPtopPort);

    pulseVal=0;
    elevVal = 0;
    connErrVal = 0;

    ui->qESP1_label->setStyleSheet("QLabel {color : red; }");
    ui->qESP2_label->setStyleSheet("QLabel {color : red; }");
    ui->qBBB_label->setStyleSheet("QLabel {color : green; }");

    ui->qCam1Up_pushButton->setIcon(QIcon(":/images/arrow_up.png"));
    ui->qCam1Down_pushButton->setIcon(QIcon(":/images/arrow_down.png"));
    ui->qElevUp_pushButton_2->setIcon(QIcon(":/images/arrow_up.png"));
    ui->qElevDown_pushButton_2->setIcon(QIcon(":/images/arrow_down.png"));
    ui->qBBB_pushButton->setIcon(QIcon(":/images/BBB2.png"));
    ui->qESP1_pushButton->setIcon(QIcon(":/images/ESP32_CAM2.png"));
    ui->qESP2_pushButton->setIcon(QIcon(":/images/ESP32_CAM2.png"));
    ui->qPuls_pushButton->setIcon(QIcon(":/images/pulsador.png"));
    ui->qAlarm_pushButton->setIcon(QIcon(":/images/speaker.svg"));
    ui->qLED_pushButton->setIcon(QIcon(":/images/headlight2.png"));

    ui->qBattery_label->setPixmap(QPixmap(":/images/Battery_full.svg"));
    ui->qLight_label->setPixmap(QPixmap(":/images/light_on.svg"));


    ui->qDisconnect_pushButton->setVisible(0);
    ui->qConnErr_label->setVisible(0);
    ui->qConnErr_label->setStyleSheet("QLabel {color : red; }");
    onUpdateJoystick(QPointF(ui->qJoystick_label->width()/2,ui->qJoystick_label->height()/2));
    //onBBBdisconnected();

    // connect pulse timer
    QObject::connect(&timerPulse,SIGNAL(timeout()),this, SLOT(onTimerPulse()));
    QObject::connect(&timerBack,SIGNAL(timeout()),this, SLOT(onTimerBack()));

    // connect elevation timer
    QObject::connect(&timerElev,SIGNAL(timeout()),this, SLOT(onTimerElev()));
    QObject::connect(&timerElevBack,SIGNAL(timeout()),this, SLOT(onTimerElevBack()));

    // connect connection error timer
    QObject::connect(&timerConnErr,SIGNAL(timeout()),this, SLOT(onTimerConnErr()));

    // connect LogFile
    QObject::connect(&socketBBB,SIGNAL(newLogFile(QString)),this, SLOT(onNewLogFile(QString)));

    // connect BBB connections
    QObject::connect(&socketBBB, SIGNAL(BBBconnected()), this, SLOT(onBBBconnected()));
    QObject::connect(&socketBBB,SIGNAL(BBBdisconnected()),this, SLOT(onBBBdisconnected()));

    // connect JoystickPos
    QObject::connect(this,SIGNAL(sendTrajectoryPos()),this, SLOT(onSendTrajectoryPos()));
    QObject::connect(&timerJoystick,SIGNAL(timeout()),this, SLOT(onTimerJoystick()));
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
        if(!timerJoystick.isActive())
        {
            timerJoystick.start(100);
        }
        joystickPos=clickedPos;
        onUpdateJoystick(joystickPos);
    }
}

void MainWindow::mouseReleaseEvent(QMouseEvent *event)
{
    timerJoystick.stop();
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
            emit sendTrajectoryPos();
    }
}

void MainWindow::mouseDoubleCLickEvent(QMouseEvent *event) //doesn't work, better with extra button for fast movement!
{
//    QPointF clickedPos = event->position()- ui->qElevUp_pushButton_2->pos() - ui->centralwidget->pos();
//    QPointF clickedPos2 = event->position()- ui->qElevDown_pushButton_2->pos() - ui->centralwidget->pos();
//    //clickedPos.setY(clickedPos.y()-26);

//    if(clickedPos.x()>=0 && clickedPos.x()<=ui->qElevUp_pushButton_2->width() && clickedPos.y()>=0 && clickedPos.y()<=ui->qElevUp_pushButton_2->height())
//    {
//        socketBBB.sendmsg("<fpga><enable_fast>1</enable_fast></fpga>");
//    }

//    if(clickedPos2.x()>=0 && clickedPos2.x()<=ui->qElevDown_pushButton_2->width() && clickedPos2.y()>=0 && clickedPos2.y()<=ui->qElevDown_pushButton_2->height())
//    {
//        socketBBB.sendmsg("<fpga><enable_fast>0</enable_fast></fpga>");
//    }
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

void MainWindow::onTimerElev()
{
    if(elevVal<100)
        elevVal=elevVal+1;

    ui->qElev_verticalSlider->setValue(elevVal);
}

void MainWindow::onTimerElevBack()
{
    if(elevVal>0)
    {
        elevVal=elevVal-1;
        ui->qElev_verticalSlider->setValue(elevVal);
    }
    else
        timerElevBack.stop();

}

void MainWindow::onTimerJoystick()
{
    emit sendTrajectoryPos();
}

void MainWindow::onTimerConnErr()
{
    if(connErrVal<50)
    {
        ui->qConnErr_label->setVisible(1);
        connErrVal +=1;

    }
    else
    {
        ui->qConnErr_label->setVisible(0);
        connErrVal=0;
        timerConnErr.stop();
    }
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

    pen.setColor(Qt::black);
    painter.setPen(pen);
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

    socketBBB.sendmsg("<trajectory><joy_x>"+QString::number(trajectoryPos.x())+"</joy_x><joy_y>"+QString::number(trajectoryPos.y())+"</joy_y></trajectory>");
}


void MainWindow::on_qCam1_RadioButton_toggled(bool checked)
{
    if (checked==true)
    {

        if (ESPtopConnectedBool==true)
        {
            cli_stream.disconnectFromHost();
        }

        //TryConnectionWithESPServer(SERVER_ADDRESS_ESP_FRONT);
        TryConnectionWithESPServer(ESPfrontAddress.toLocal8Bit().data());
    }
}


void MainWindow::on_qCam2_radioButton_toggled(bool checked)
{
    if (checked==true)
    {

        if (ESPfrontConnectedBool==true)
        {
            cli_stream.disconnectFromHost();
        }

        TryConnectionWithESPServer(ESPtopAddress.toLocal8Bit().data());
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

    socketBBB.sendmsg("<esp32_top><pulsar>1</pulsar></esp32_top>");
}


void MainWindow::on_qPuls_pushButton_released()
{
    timerPulse.stop();
    timerBack.start(10);

    socketBBB.sendmsg("<esp32_top><pulsar>0</pulsar></esp32_top>");
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


void MainWindow::on_qVel_spinBox_valueChanged(int arg1)
{
    socketBBB.sendmsg("<trajectory><vel_max>"+QString::number(arg1)+"</vel_max></trajectory>");
}


void MainWindow::on_qElevUp_pushButton_2_pressed()
{
    timerElev.start(100);

    socketBBB.sendmsg("<fpga><direction_elev>1</direction_elev><enable_elev>1</enable_elev></fpga>");
}


void MainWindow::on_qElevUp_pushButton_2_released()
{
    timerElev.stop();

    socketBBB.sendmsg("<fpga><enable_elev>0</enable_elev></fpga>");
}


void MainWindow::on_qElevDown_pushButton_2_pressed()
{
    timerElevBack.start(100);

    socketBBB.sendmsg("<fpga><direction_elev>0</direction_elev><enable_elev>1</enable_elev></fpga>");
}


void MainWindow::on_qElevDown_pushButton_2_released()
{
    timerElevBack.stop();

    socketBBB.sendmsg("<fpga><enable_elev>0</enable_elev></fpga>");
}


void MainWindow::on_qCam1Up_pushButton_pressed()
{
    socketBBB.sendmsg("<fpga><direction_cam>1</direction_cam><enable_cam>1</enable_cam></fpga>");
}


void MainWindow::on_qCam1Down_pushButton_pressed()
{
    socketBBB.sendmsg("<fpga><direction_cam>0</direction_cam><enable_cam>1</enable_cam></fpga>");
}


void MainWindow::on_qCam1Down_pushButton_released()
{
    socketBBB.sendmsg("<fpga><enable_cam>0</enable_cam></fpga>");
}


void MainWindow::on_qCam1Up_pushButton_released()
{
    socketBBB.sendmsg("<fpga><enable_cam>0</enable_cam></fpga>");
}


void MainWindow::on_qLED_pushButton_clicked()
{
    if(ui->qLED_pushButton->isChecked())
    {
        socketBBB.sendmsg("<beaglebone><led_light>1</led_light></beaglebone>");
    }
    else
    {
        socketBBB.sendmsg("<beaglebone><led_light>0</led_light></beaglebone>");
    }
}


void MainWindow::on_qAlarm_pushButton_clicked()
{
    if(ui->qAlarm_pushButton->isChecked())
    {
        socketBBB.sendmsg("<beaglebone><speaker>1</speaker></beaglebone>");
    }
    else
    {
        socketBBB.sendmsg("<beaglebone><speaker>0</speaker></beaglebone>");
    }
}


void MainWindow::TryConnectionWithESPServer(char* SERVER_ADDRESS)
{
    char txt_snd[1024];

    cli_stream.connectToHost(QHostAddress(SERVER_ADDRESS),SERVER_PORT_STREAM);
    if (cli_stream.waitForConnected(2000))
    {
        if (SERVER_ADDRESS == ESPfrontAddress)
        {
            ESPfrontConnectedBool = 1;
        }
        else if(SERVER_ADDRESS == ESPtopAddress)
        {
            ESPtopConnectedBool = 1;
        }
        ui->qVideo_label->setStyleSheet(("QLabel {color : black; }"));
        ui->qDisconnect_pushButton->setVisible(1);

        connect(&cli_stream,SIGNAL(readyRead()),this,SLOT(OnESPDataReceived()));
        connect(&cli_stream,SIGNAL(disconnected()),this,SLOT(OnESPDisconnected()));

        sprintf(txt_snd,"GET %s HTTP/1.1\r\n","/stream");
        sprintf(txt_snd+strlen(txt_snd),"Host: %s:%d\r\n",SERVER_ADDRESS,SERVER_PORT_STREAM);
        strcat(txt_snd,"Accept: image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8\r\n");
        strcat(txt_snd,"Connection: keep-alive\r\n");
        strcat(txt_snd,"\r\n");
        int n=cli_stream.write(txt_snd,strlen(txt_snd));
#ifdef LOG_COMM_EVENTS
        qDebug("Connection port 81 success, sent %d bytes\n",n); fflush(stdout);
#endif
    }
    else
    {
        if(SERVER_ADDRESS==ESPtopAddress)
        {
            ui->qCam2_radioButton->setAutoExclusive(false);
            ui->qCam2_radioButton->setChecked(false);
            ui->qCam2_radioButton->setAutoExclusive(true);
            ui->qVideo_label->setText("No connection with CAM_TOP possible!");
            ui->qVideo_label->setStyleSheet(("QLabel {color : red; }"));
        }
        else if(SERVER_ADDRESS==ESPfrontAddress)
        {
            ui->qCam1_RadioButton->setAutoExclusive(false);
            ui->qCam1_RadioButton->setChecked(false);
            ui->qCam1_RadioButton->setAutoExclusive(true);
            ui->qVideo_label->setText("No connection with CAM_FRONT possible!");
            ui->qVideo_label->setStyleSheet(("QLabel {color : red; }"));
        }

#ifdef LOG_COMM_EVENTS
        qDebug("Connection failed\n"); fflush(stdout);
#endif
    }
}


void MainWindow::OnESPDataReceived()
{
    while (cli_stream.bytesAvailable())
    {
        recv += cli_stream.readAll();
    }

    int index=recv.indexOf("Content-Type: image/jpeg");
    if (index>=0)
    {
        index=recv.indexOf("Content-Length: ",index);
        int len=atoi(recv.constData()+index+strlen("Content-Length: "));
#ifdef LOG_COMM_EVENTS
        qDebug("Len=%d\n",len); fflush(stdout);
#endif
        int iStart=recv.indexOf("\r\n\r\n\r\n",index)+6;
        int lenHex;
        sscanf(recv.constData()+iStart,"%x",&lenHex);
        if (lenHex!=len)
        {
#ifdef LOG_COMM_EVENTS
            qDebug("Invalid len hex\n"); fflush(stdout);
#endif
            return;
        }
        iStart=recv.indexOf("\r\n",iStart)+2;
        const unsigned char* ptr=(const unsigned char*) recv.constData()+iStart;

#ifdef LOG_COMM_EVENTS
        qDebug("%02x%02x%02x%02x\n",ptr[0],ptr[1],ptr[2],ptr[3]);
        fflush(stdout);
#endif
        int recv_len=recv.length()-iStart;
        if (recv_len>=len)
        {
#ifdef LOG_COMM_EVENTS
            qDebug("%d bytes received, decoding image\n",recv_len); fflush(stdout);
#endif
            QPixmap img;
            bool ok=img.loadFromData(ptr,len,"jpg");
            if (ok)
            {
#ifdef LOG_COMM_EVENTS
                qDebug("Image %dx%d received\n",img.width(),img.height()); fflush(stdout);
#endif
                ui->qVideo_label->setPixmap(img);
            }
            recv=recv.mid(iStart+len);
            return;
        }
#ifdef LOG_COMM_EVENTS
        else
        {
            qDebug("%d bytes received, %d needed\n",recv_len,len); fflush(stdout);
        }
#endif
    }
    return;
}

void MainWindow::OnESPDisconnected()
{
        ESPfrontConnectedBool = false;
        ESPtopConnectedBool = false;

        ui->qCam2_radioButton->setAutoExclusive(false);
        ui->qCam2_radioButton->setChecked(false);
        ui->qCam2_radioButton->setAutoExclusive(true);
        ui->qCam1_RadioButton->setAutoExclusive(false);
        ui->qCam1_RadioButton->setChecked(false);
        ui->qCam1_RadioButton->setAutoExclusive(true);

        ui->qDisconnect_pushButton->setVisible(0);

        ui->qVideo_label->setText("ESP-CAM disconnected!");
        ui->qVideo_label->setStyleSheet(("QLabel {color : red; }"));

#ifdef LOG_COMM_EVENTS
            qDebug("Disconnected. Retry\n"); fflush(stdout);
#endif
    //TryConnectionWithESPServer(SERVER_ADDRESS);
}

void MainWindow::OnESPError(QAbstractSocket::SocketError err)
{
#ifdef LOG_COMM_EVENTS
            qDebug("Error %d: %s\n",(int)err,cli_stream.errorString().toLatin1().constData()); fflush(stdout);
#endif

}

void MainWindow::onBBBdisconnected()
{
    ui->qAlarm_pushButton->setEnabled(0);
    ui->qCam1Down_pushButton->setEnabled(0);
    ui->qCam1Up_pushButton->setEnabled(0);
    ui->qElevDown_pushButton_2->setEnabled(0);
    ui->qElevUp_pushButton_2->setEnabled(0);
    ui->qLED_pushButton->setEnabled(0);
    ui->qPuls_pushButton->setEnabled(0);

    ui->qConnect_pushButton_2->setEnabled(1);
    ui->qConnect_pushButton_2->setStyleSheet("QPushButton {color : red; }");
}

void MainWindow::onBBBconnected()
{
    ui->qAlarm_pushButton->setEnabled(1);
    ui->qCam1Down_pushButton->setEnabled(1);
    ui->qCam1Up_pushButton->setEnabled(1);
    ui->qElevDown_pushButton_2->setEnabled(1);
    ui->qElevUp_pushButton_2->setEnabled(1);
    ui->qLED_pushButton->setEnabled(1);
    ui->qPuls_pushButton->setEnabled(1);

    ui->qConnect_pushButton_2->setEnabled(0);
    ui->qConnect_pushButton_2->setStyleSheet("QLabel {color : green; }");
}


void MainWindow::on_qConnections_action_triggered()
{
    opt.setModal(true);

    opt.writeIPs(BBBaddress, ESPfrontAddress, ESPtopAddress);
    opt.writePorts(BBBport,ESPfrontPort,ESPtopPort);

    if(opt.exec() == QDialog::Accepted)
    {
        BBBaddress = opt.getBBBip();
        ESPfrontAddress = opt.getESPfrontIp();
        ESPtopAddress = opt.getESPtopIp().toLocal8Bit().data();

        BBBport = quint16(opt.getBBBport());
        ESPfrontPort = quint16(opt.getESPfrontPort());
        ESPtopPort = quint16(opt.getESPtopPort());
    }
}


void MainWindow::on_qTimer_action_triggered()
{
    TimerDialog timeDlg;
    timeDlg.setModal(true);

    timeDlg.setTimes(controllerTime, sensorTime, broadcastTime, logfileTime);

    if(timeDlg.exec() == QDialog::Accepted)
    {
        broadcastTime = timeDlg.getBroadcastTime();
        controllerTime = timeDlg.getControllerTime();
        sensorTime = timeDlg.getSensorTime();
        logfileTime = timeDlg.getLogfileTime();

        socketBBB.sendmsg("<beaglebone><broadcast_time>"+QString::number(broadcastTime)
                          +"</broadcast_time><controller_time>"+QString::number(controllerTime)
                          +"</controller_time><sensor_time>"+QString::number(sensorTime)
                          +"</sensor_time><log_time>"+QString::number(logfileTime)
                          +"</log_time></beaglebone>"
                          );
    }
}


void MainWindow::on_qConnect_pushButton_2_clicked()
{
    if(socketBBB.Test(QHostAddress(BBBaddress),BBBport)==0)
    {
        timerConnErr.start(100);
    }
}


void MainWindow::on_qDisconnect_pushButton_clicked()
{
    //socketBBB.OnDisconnected();
    cli_stream.disconnectFromHost();
}


void MainWindow::on_qRoom_checkBox_stateChanged(int arg1)
{
    if (arg1 == 0)
        socketBBB.sendmsg("<beaglebone><room_light>0</room_light><room_name>"+ui->qRoom_lineEdit->text()+"</room_name></beaglebone>");
    else
        socketBBB.sendmsg("<beaglebone><room_light>1</room_light><room_name>"+ui->qRoom_lineEdit->text()+"</room_name></beaglebone>");
}

