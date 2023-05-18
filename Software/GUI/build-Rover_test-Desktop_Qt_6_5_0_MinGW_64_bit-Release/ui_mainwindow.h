/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *qStatus_action;
    QAction *qTraj_action;
    QAction *qConnections_action;
    QAction *qTimer_action;
    QWidget *centralwidget;
    QTabWidget *tabWidget;
    QWidget *tab;
    QPushButton *qCam1Down_pushButton;
    QPushButton *qCam1Up_pushButton;
    QProgressBar *qPuls_progressBar;
    QPushButton *qPuls_pushButton;
    QLabel *label_4;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QSlider *qElev_verticalSlider;
    QSpinBox *qElev_spinBox;
    QLabel *label_5;
    QRadioButton *qCam1_RadioButton;
    QRadioButton *qCam2_radioButton;
    QLabel *qVideo_label;
    QSpinBox *qVel_spinBox;
    QLabel *qJoystick_label;
    QPushButton *qElevDown_pushButton_2;
    QPushButton *qElevUp_pushButton_2;
    QPushButton *qLED_pushButton;
    QPushButton *qAlarm_pushButton;
    QPushButton *qConnect_pushButton_2;
    QPushButton *qDisconnect_pushButton;
    QLabel *qRoom_label;
    QLineEdit *qRoom_lineEdit;
    QCheckBox *qRoom_checkBox;
    QLabel *qConnErr_label;
    QWidget *tab_2;
    QLabel *label_6;
    QPushButton *qTraj_pushButton;
    QWidget *tab_3;
    QLabel *label_7;
    QLabel *label_8;
    QLabel *label_9;
    QLabel *label_10;
    QLabel *label_11;
    QLabel *label_12;
    QFrame *line;
    QPushButton *qESP1_pushButton;
    QPushButton *qBBB_pushButton;
    QPushButton *qESP2_pushButton;
    QLabel *qBBB_label;
    QLabel *qBattery_label;
    QLabel *qESP1_label;
    QLabel *qESP2_label;
    QLabel *qBatTxt_label;
    QLabel *label_13;
    QLabel *qLight_label;
    QWidget *tab_4;
    QPushButton *qLog_pushButton;
    QTextEdit *qLog_textEdit;
    QMenuBar *menubar;
    QMenu *menuRoverData;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(1314, 747);
        qStatus_action = new QAction(MainWindow);
        qStatus_action->setObjectName("qStatus_action");
        qTraj_action = new QAction(MainWindow);
        qTraj_action->setObjectName("qTraj_action");
        qConnections_action = new QAction(MainWindow);
        qConnections_action->setObjectName("qConnections_action");
        qTimer_action = new QAction(MainWindow);
        qTimer_action->setObjectName("qTimer_action");
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        tabWidget = new QTabWidget(centralwidget);
        tabWidget->setObjectName("tabWidget");
        tabWidget->setGeometry(QRect(0, 0, 1311, 731));
        tab = new QWidget();
        tab->setObjectName("tab");
        qCam1Down_pushButton = new QPushButton(tab);
        qCam1Down_pushButton->setObjectName("qCam1Down_pushButton");
        qCam1Down_pushButton->setGeometry(QRect(970, 540, 51, 71));
        QIcon icon;
        icon.addFile(QString::fromUtf8("arrow_down.png"), QSize(), QIcon::Normal, QIcon::Off);
        qCam1Down_pushButton->setIcon(icon);
        qCam1Down_pushButton->setIconSize(QSize(50, 50));
        qCam1Up_pushButton = new QPushButton(tab);
        qCam1Up_pushButton->setObjectName("qCam1Up_pushButton");
        qCam1Up_pushButton->setGeometry(QRect(970, 460, 51, 71));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8("arrow_up.png"), QSize(), QIcon::Normal, QIcon::Off);
        qCam1Up_pushButton->setIcon(icon1);
        qCam1Up_pushButton->setIconSize(QSize(50, 50));
        qPuls_progressBar = new QProgressBar(tab);
        qPuls_progressBar->setObjectName("qPuls_progressBar");
        qPuls_progressBar->setGeometry(QRect(970, 160, 151, 31));
        qPuls_progressBar->setLayoutDirection(Qt::RightToLeft);
        qPuls_progressBar->setValue(0);
        qPuls_progressBar->setInvertedAppearance(false);
        qPuls_pushButton = new QPushButton(tab);
        qPuls_pushButton->setObjectName("qPuls_pushButton");
        qPuls_pushButton->setGeometry(QRect(950, 57, 211, 101));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8("pulsador.png"), QSize(), QIcon::Normal, QIcon::Off);
        qPuls_pushButton->setIcon(icon2);
        qPuls_pushButton->setIconSize(QSize(200, 200));
        label_4 = new QLabel(tab);
        label_4->setObjectName("label_4");
        label_4->setGeometry(QRect(950, 20, 51, 31));
        QFont font;
        font.setPointSize(12);
        label_4->setFont(font);
        label = new QLabel(tab);
        label->setObjectName("label");
        label->setGeometry(QRect(1180, 330, 91, 31));
        label->setFont(font);
        label_2 = new QLabel(tab);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(970, 420, 61, 31));
        label_2->setFont(font);
        label_3 = new QLabel(tab);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(1180, 420, 91, 31));
        label_3->setFont(font);
        qElev_verticalSlider = new QSlider(tab);
        qElev_verticalSlider->setObjectName("qElev_verticalSlider");
        qElev_verticalSlider->setGeometry(QRect(1260, 460, 22, 160));
        qElev_verticalSlider->setValue(0);
        qElev_verticalSlider->setOrientation(Qt::Vertical);
        qElev_verticalSlider->setTickPosition(QSlider::TicksBothSides);
        qElev_spinBox = new QSpinBox(tab);
        qElev_spinBox->setObjectName("qElev_spinBox");
        qElev_spinBox->setGeometry(QRect(1180, 630, 42, 26));
        qElev_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        label_5 = new QLabel(tab);
        label_5->setObjectName("label_5");
        label_5->setGeometry(QRect(1240, 370, 91, 31));
        label_5->setFont(font);
        qCam1_RadioButton = new QRadioButton(tab);
        qCam1_RadioButton->setObjectName("qCam1_RadioButton");
        qCam1_RadioButton->setEnabled(true);
        qCam1_RadioButton->setGeometry(QRect(360, 620, 100, 50));
        QFont font1;
        font1.setPointSize(14);
        qCam1_RadioButton->setFont(font1);
        qCam1_RadioButton->setCheckable(true);
        qCam1_RadioButton->setChecked(false);
        qCam2_radioButton = new QRadioButton(tab);
        qCam2_radioButton->setObjectName("qCam2_radioButton");
        qCam2_radioButton->setGeometry(QRect(500, 620, 100, 50));
        qCam2_radioButton->setFont(font1);
        qCam2_radioButton->setIconSize(QSize(50, 50));
        qVideo_label = new QLabel(tab);
        qVideo_label->setObjectName("qVideo_label");
        qVideo_label->setGeometry(QRect(30, 50, 901, 571));
        QFont font2;
        font2.setPointSize(20);
        qVideo_label->setFont(font2);
        qVideo_label->setAutoFillBackground(false);
        qVideo_label->setFrameShape(QFrame::Box);
        qVideo_label->setFrameShadow(QFrame::Plain);
        qVideo_label->setLineWidth(5);
        qVideo_label->setScaledContents(true);
        qVideo_label->setAlignment(Qt::AlignCenter);
        qVideo_label->setMargin(0);
        qVel_spinBox = new QSpinBox(tab);
        qVel_spinBox->setObjectName("qVel_spinBox");
        qVel_spinBox->setGeometry(QRect(1180, 370, 51, 31));
        qVel_spinBox->setButtonSymbols(QAbstractSpinBox::UpDownArrows);
        qVel_spinBox->setMaximum(100);
        qVel_spinBox->setSingleStep(5);
        qVel_spinBox->setValue(75);
        qJoystick_label = new QLabel(tab);
        qJoystick_label->setObjectName("qJoystick_label");
        qJoystick_label->setGeometry(QRect(960, 200, 200, 200));
        qJoystick_label->setFrameShape(QFrame::Box);
        qElevDown_pushButton_2 = new QPushButton(tab);
        qElevDown_pushButton_2->setObjectName("qElevDown_pushButton_2");
        qElevDown_pushButton_2->setGeometry(QRect(1170, 540, 51, 71));
        qElevDown_pushButton_2->setIcon(icon);
        qElevDown_pushButton_2->setIconSize(QSize(50, 50));
        qElevUp_pushButton_2 = new QPushButton(tab);
        qElevUp_pushButton_2->setObjectName("qElevUp_pushButton_2");
        qElevUp_pushButton_2->setGeometry(QRect(1170, 460, 51, 71));
        qElevUp_pushButton_2->setIcon(icon1);
        qElevUp_pushButton_2->setIconSize(QSize(50, 50));
        qLED_pushButton = new QPushButton(tab);
        qLED_pushButton->setObjectName("qLED_pushButton");
        qLED_pushButton->setGeometry(QRect(1200, 60, 80, 80));
        QIcon icon3;
        icon3.addFile(QString::fromUtf8(":/images/headlight2.png"), QSize(), QIcon::Normal, QIcon::Off);
        qLED_pushButton->setIcon(icon3);
        qLED_pushButton->setIconSize(QSize(60, 60));
        qLED_pushButton->setCheckable(true);
        qAlarm_pushButton = new QPushButton(tab);
        qAlarm_pushButton->setObjectName("qAlarm_pushButton");
        qAlarm_pushButton->setGeometry(QRect(1200, 170, 80, 80));
        QIcon icon4;
        icon4.addFile(QString::fromUtf8(":/images/speaker.svg"), QSize(), QIcon::Normal, QIcon::Off);
        qAlarm_pushButton->setIcon(icon4);
        qAlarm_pushButton->setIconSize(QSize(60, 60));
        qAlarm_pushButton->setCheckable(true);
        qAlarm_pushButton->setChecked(false);
        qConnect_pushButton_2 = new QPushButton(tab);
        qConnect_pushButton_2->setObjectName("qConnect_pushButton_2");
        qConnect_pushButton_2->setEnabled(true);
        qConnect_pushButton_2->setGeometry(QRect(1130, 0, 171, 31));
        qConnect_pushButton_2->setFont(font);
        qDisconnect_pushButton = new QPushButton(tab);
        qDisconnect_pushButton->setObjectName("qDisconnect_pushButton");
        qDisconnect_pushButton->setEnabled(true);
        qDisconnect_pushButton->setGeometry(QRect(776, 585, 151, 31));
        qDisconnect_pushButton->setFont(font);
        qRoom_label = new QLabel(tab);
        qRoom_label->setObjectName("qRoom_label");
        qRoom_label->setGeometry(QRect(320, 10, 63, 20));
        qRoom_label->setFont(font);
        qRoom_lineEdit = new QLineEdit(tab);
        qRoom_lineEdit->setObjectName("qRoom_lineEdit");
        qRoom_lineEdit->setGeometry(QRect(380, 10, 71, 26));
        qRoom_checkBox = new QCheckBox(tab);
        qRoom_checkBox->setObjectName("qRoom_checkBox");
        qRoom_checkBox->setGeometry(QRect(490, 10, 131, 24));
        qRoom_checkBox->setFont(font);
        qConnErr_label = new QLabel(tab);
        qConnErr_label->setObjectName("qConnErr_label");
        qConnErr_label->setGeometry(QRect(1150, 30, 161, 20));
        qConnErr_label->setFont(font);
        tabWidget->addTab(tab, QString());
        tab_2 = new QWidget();
        tab_2->setObjectName("tab_2");
        label_6 = new QLabel(tab_2);
        label_6->setObjectName("label_6");
        label_6->setGeometry(QRect(290, 10, 771, 621));
        label_6->setFrameShape(QFrame::Box);
        label_6->setLineWidth(3);
        label_6->setPixmap(QPixmap(QString::fromUtf8("trajectory2.png")));
        label_6->setScaledContents(true);
        qTraj_pushButton = new QPushButton(tab_2);
        qTraj_pushButton->setObjectName("qTraj_pushButton");
        qTraj_pushButton->setGeometry(QRect(890, 630, 171, 41));
        qTraj_pushButton->setFont(font);
        tabWidget->addTab(tab_2, QString());
        tab_3 = new QWidget();
        tab_3->setObjectName("tab_3");
        label_7 = new QLabel(tab_3);
        label_7->setObjectName("label_7");
        label_7->setGeometry(QRect(110, 170, 141, 20));
        label_7->setFont(font);
        label_7->setAlignment(Qt::AlignCenter);
        label_8 = new QLabel(tab_3);
        label_8->setObjectName("label_8");
        label_8->setGeometry(QRect(460, 160, 151, 31));
        label_8->setFont(font);
        label_8->setAlignment(Qt::AlignCenter);
        label_9 = new QLabel(tab_3);
        label_9->setObjectName("label_9");
        label_9->setGeometry(QRect(750, 160, 151, 31));
        label_9->setFont(font);
        label_9->setAlignment(Qt::AlignCenter);
        label_10 = new QLabel(tab_3);
        label_10->setObjectName("label_10");
        label_10->setGeometry(QRect(1040, 160, 151, 31));
        label_10->setFont(font);
        label_10->setAlignment(Qt::AlignCenter);
        label_11 = new QLabel(tab_3);
        label_11->setObjectName("label_11");
        label_11->setGeometry(QRect(720, 60, 221, 51));
        QFont font3;
        font3.setPointSize(15);
        label_11->setFont(font3);
        label_12 = new QLabel(tab_3);
        label_12->setObjectName("label_12");
        label_12->setGeometry(QRect(80, 70, 201, 31));
        label_12->setFont(font3);
        label_12->setAlignment(Qt::AlignCenter);
        line = new QFrame(tab_3);
        line->setObjectName("line");
        line->setGeometry(QRect(390, 30, 20, 621));
        line->setFrameShape(QFrame::VLine);
        line->setFrameShadow(QFrame::Sunken);
        qESP1_pushButton = new QPushButton(tab_3);
        qESP1_pushButton->setObjectName("qESP1_pushButton");
        qESP1_pushButton->setGeometry(QRect(760, 220, 150, 191));
        QIcon icon5;
        icon5.addFile(QString::fromUtf8("ESP32_CAM2.png"), QSize(), QIcon::Normal, QIcon::Off);
        qESP1_pushButton->setIcon(icon5);
        qESP1_pushButton->setIconSize(QSize(150, 150));
        qBBB_pushButton = new QPushButton(tab_3);
        qBBB_pushButton->setObjectName("qBBB_pushButton");
        qBBB_pushButton->setGeometry(QRect(460, 220, 150, 191));
        QIcon icon6;
        icon6.addFile(QString::fromUtf8("BBB2.png"), QSize(), QIcon::Normal, QIcon::Off);
        qBBB_pushButton->setIcon(icon6);
        qBBB_pushButton->setIconSize(QSize(180, 180));
        qESP2_pushButton = new QPushButton(tab_3);
        qESP2_pushButton->setObjectName("qESP2_pushButton");
        qESP2_pushButton->setGeometry(QRect(1040, 220, 150, 191));
        qESP2_pushButton->setIcon(icon5);
        qESP2_pushButton->setIconSize(QSize(150, 150));
        qBBB_label = new QLabel(tab_3);
        qBBB_label->setObjectName("qBBB_label");
        qBBB_label->setGeometry(QRect(460, 410, 151, 81));
        qBBB_label->setFont(font);
        qBBB_label->setScaledContents(false);
        qBBB_label->setAlignment(Qt::AlignCenter);
        qBattery_label = new QLabel(tab_3);
        qBattery_label->setObjectName("qBattery_label");
        qBattery_label->setGeometry(QRect(110, 220, 141, 131));
        qBattery_label->setPixmap(QPixmap(QString::fromUtf8("Battery_full.svg")));
        qBattery_label->setScaledContents(true);
        qESP1_label = new QLabel(tab_3);
        qESP1_label->setObjectName("qESP1_label");
        qESP1_label->setGeometry(QRect(760, 410, 151, 81));
        qESP1_label->setFont(font);
        qESP1_label->setScaledContents(false);
        qESP1_label->setAlignment(Qt::AlignCenter);
        qESP2_label = new QLabel(tab_3);
        qESP2_label->setObjectName("qESP2_label");
        qESP2_label->setGeometry(QRect(1040, 410, 151, 81));
        qESP2_label->setFont(font);
        qESP2_label->setScaledContents(false);
        qESP2_label->setAlignment(Qt::AlignCenter);
        qBatTxt_label = new QLabel(tab_3);
        qBatTxt_label->setObjectName("qBatTxt_label");
        qBatTxt_label->setGeometry(QRect(150, 350, 63, 31));
        qBatTxt_label->setFont(font);
        qBatTxt_label->setAlignment(Qt::AlignCenter);
        label_13 = new QLabel(tab_3);
        label_13->setObjectName("label_13");
        label_13->setGeometry(QRect(110, 440, 141, 31));
        label_13->setFont(font);
        label_13->setAlignment(Qt::AlignCenter);
        qLight_label = new QLabel(tab_3);
        qLight_label->setObjectName("qLight_label");
        qLight_label->setGeometry(QRect(110, 480, 141, 141));
        qLight_label->setPixmap(QPixmap(QString::fromUtf8("light_on.svg")));
        qLight_label->setScaledContents(true);
        tabWidget->addTab(tab_3, QString());
        tab_4 = new QWidget();
        tab_4->setObjectName("tab_4");
        qLog_pushButton = new QPushButton(tab_4);
        qLog_pushButton->setObjectName("qLog_pushButton");
        qLog_pushButton->setGeometry(QRect(1090, 580, 171, 41));
        qLog_pushButton->setFont(font);
        qLog_textEdit = new QTextEdit(tab_4);
        qLog_textEdit->setObjectName("qLog_textEdit");
        qLog_textEdit->setGeometry(QRect(0, 0, 1261, 571));
        qLog_textEdit->setLineWidth(3);
        tabWidget->addTab(tab_4, QString());
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 1314, 26));
        menuRoverData = new QMenu(menubar);
        menuRoverData->setObjectName("menuRoverData");
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName("statusbar");
        MainWindow->setStatusBar(statusbar);

        menubar->addAction(menuRoverData->menuAction());
        menuRoverData->addAction(qStatus_action);
        menuRoverData->addAction(qConnections_action);
        menuRoverData->addAction(qTimer_action);

        retranslateUi(MainWindow);

        tabWidget->setCurrentIndex(3);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "ROVER - PL1", nullptr));
        qStatus_action->setText(QCoreApplication::translate("MainWindow", "Rover Status", nullptr));
        qTraj_action->setText(QCoreApplication::translate("MainWindow", "Trajectory", nullptr));
        qConnections_action->setText(QCoreApplication::translate("MainWindow", "Connections", nullptr));
        qTimer_action->setText(QCoreApplication::translate("MainWindow", "Timer Settings", nullptr));
        qCam1Down_pushButton->setText(QString());
        qCam1Up_pushButton->setText(QString());
        qPuls_pushButton->setText(QString());
        label_4->setText(QCoreApplication::translate("MainWindow", "Push:", nullptr));
        label->setText(QCoreApplication::translate("MainWindow", "Velocity:", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "Cam1: ", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "Elevation:", nullptr));
        label_5->setText(QCoreApplication::translate("MainWindow", "%", nullptr));
        qCam1_RadioButton->setText(QCoreApplication::translate("MainWindow", "Cam1", nullptr));
        qCam2_radioButton->setText(QCoreApplication::translate("MainWindow", "Cam2", nullptr));
        qVideo_label->setText(QString());
        qJoystick_label->setText(QCoreApplication::translate("MainWindow", "Joystick", nullptr));
        qElevDown_pushButton_2->setText(QString());
        qElevUp_pushButton_2->setText(QString());
        qLED_pushButton->setText(QString());
        qAlarm_pushButton->setText(QString());
        qConnect_pushButton_2->setText(QCoreApplication::translate("MainWindow", "Reconnect to BBB", nullptr));
        qDisconnect_pushButton->setText(QCoreApplication::translate("MainWindow", "Disconnect Cam", nullptr));
        qRoom_label->setText(QCoreApplication::translate("MainWindow", "Room:", nullptr));
        qRoom_lineEdit->setText(QCoreApplication::translate("MainWindow", "MEC-2", nullptr));
        qRoom_checkBox->setText(QCoreApplication::translate("MainWindow", "Room Light", nullptr));
        qConnErr_label->setText(QCoreApplication::translate("MainWindow", "Connection failed!", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab), QCoreApplication::translate("MainWindow", "Control", nullptr));
        label_6->setText(QString());
        qTraj_pushButton->setText(QCoreApplication::translate("MainWindow", "Export...", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QCoreApplication::translate("MainWindow", "Trajectory", nullptr));
        label_7->setText(QCoreApplication::translate("MainWindow", "Battery Level:", nullptr));
        label_8->setText(QCoreApplication::translate("MainWindow", "BBB:", nullptr));
        label_9->setText(QCoreApplication::translate("MainWindow", "ESP-CAM1:", nullptr));
        label_10->setText(QCoreApplication::translate("MainWindow", "ESP-CAM2:", nullptr));
        label_11->setText(QCoreApplication::translate("MainWindow", "Connection Status:", nullptr));
        label_12->setText(QCoreApplication::translate("MainWindow", "Rover Status:", nullptr));
        qESP1_pushButton->setText(QString());
        qBBB_pushButton->setText(QString());
        qESP2_pushButton->setText(QString());
        qBBB_label->setText(QCoreApplication::translate("MainWindow", "CONNECTED", nullptr));
        qBattery_label->setText(QString());
        qESP1_label->setText(QCoreApplication::translate("MainWindow", "DISCONNECTED", nullptr));
        qESP2_label->setText(QCoreApplication::translate("MainWindow", "DISCONNECTED", nullptr));
        qBatTxt_label->setText(QCoreApplication::translate("MainWindow", "97%", nullptr));
        label_13->setText(QCoreApplication::translate("MainWindow", "Light Detector:", nullptr));
        qLight_label->setText(QString());
        tabWidget->setTabText(tabWidget->indexOf(tab_3), QCoreApplication::translate("MainWindow", "Status", nullptr));
        qLog_pushButton->setText(QCoreApplication::translate("MainWindow", "Export...", nullptr));
        qLog_textEdit->setHtml(QCoreApplication::translate("MainWindow", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"hr { height: 1px; border-width: 0; }\n"
"</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:11:54]: connected to BBB</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:11:56]: connected to ESP-CAM1</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:11:58]: connected to ESP-CAM2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:12:23]: move f"
                        "orward</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:13:24]: velocity changed to 50%</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:13:25]: manipulator activated</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">[09:15:20]: camera moved to position +5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\""
                        ">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">222</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\"-qt-paragraph-type:empty"
                        "; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">22</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margi"
                        "n-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; m"
                        "argin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p sty"
                        "le=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">22</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent"
                        ":0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-bloc"
                        "k-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">22</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">2</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">3</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">4</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">4</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">4</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; ma"
                        "rgin-right:0px; -qt-block-indent:0; text-indent:0px;\">4</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" m"
                        "argin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">5</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">55</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">66</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-blo"
                        "ck-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">66</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">6</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">77</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\" margin-top:0px; margin"
                        "-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">77</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">77</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px"
                        "; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">7</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-lef"
                        "t:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">8</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">9</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">9</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">9</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">99</p>\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-in"
                        "dent:0px;\"><br /></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">9</p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">9</p></body></html>", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_4), QCoreApplication::translate("MainWindow", "LogFile", nullptr));
        menuRoverData->setTitle(QCoreApplication::translate("MainWindow", "Options", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
