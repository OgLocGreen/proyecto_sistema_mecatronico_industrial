/********************************************************************************
** Form generated from reading UI file 'MainWindow.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout_2;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QVBoxLayout *verticalLayout;
    QSpinBox *qenableScissorSpinBox;
    QSpinBox *qenableServoSpinBox;
    QSpinBox *qdirScissorSpinBox;
    QSpinBox *qdirServoSpinBox;
    QHBoxLayout *horizontalLayout;
    QSlider *qLeftMotor;
    QSlider *qRighthmotor;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *qSendLine_pushButton;
    QVBoxLayout *verticalLayout_3;
    QPushButton *qParaMD_pushButton;
    QPushButton *qStartSendMD_pushButton;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(667, 312);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName("gridLayout");
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName("verticalLayout_2");
        label = new QLabel(centralwidget);
        label->setObjectName("label");

        verticalLayout_2->addWidget(label);

        label_2 = new QLabel(centralwidget);
        label_2->setObjectName("label_2");

        verticalLayout_2->addWidget(label_2);

        label_3 = new QLabel(centralwidget);
        label_3->setObjectName("label_3");

        verticalLayout_2->addWidget(label_3);

        label_4 = new QLabel(centralwidget);
        label_4->setObjectName("label_4");

        verticalLayout_2->addWidget(label_4);


        gridLayout->addLayout(verticalLayout_2, 0, 1, 1, 1);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName("verticalLayout");
        qenableScissorSpinBox = new QSpinBox(centralwidget);
        qenableScissorSpinBox->setObjectName("qenableScissorSpinBox");
        qenableScissorSpinBox->setMaximum(1);
        qenableScissorSpinBox->setValue(1);

        verticalLayout->addWidget(qenableScissorSpinBox);

        qenableServoSpinBox = new QSpinBox(centralwidget);
        qenableServoSpinBox->setObjectName("qenableServoSpinBox");
        qenableServoSpinBox->setMaximum(1);

        verticalLayout->addWidget(qenableServoSpinBox);

        qdirScissorSpinBox = new QSpinBox(centralwidget);
        qdirScissorSpinBox->setObjectName("qdirScissorSpinBox");
        qdirScissorSpinBox->setMaximum(1);

        verticalLayout->addWidget(qdirScissorSpinBox);

        qdirServoSpinBox = new QSpinBox(centralwidget);
        qdirServoSpinBox->setObjectName("qdirServoSpinBox");
        qdirServoSpinBox->setMaximum(1);

        verticalLayout->addWidget(qdirServoSpinBox);


        gridLayout->addLayout(verticalLayout, 0, 2, 1, 2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName("horizontalLayout");
        qLeftMotor = new QSlider(centralwidget);
        qLeftMotor->setObjectName("qLeftMotor");
        qLeftMotor->setMinimum(-100);
        qLeftMotor->setMaximum(100);
        qLeftMotor->setOrientation(Qt::Vertical);

        horizontalLayout->addWidget(qLeftMotor);

        qRighthmotor = new QSlider(centralwidget);
        qRighthmotor->setObjectName("qRighthmotor");
        qRighthmotor->setMinimum(-100);
        qRighthmotor->setMaximum(100);
        qRighthmotor->setOrientation(Qt::Vertical);

        horizontalLayout->addWidget(qRighthmotor);


        gridLayout->addLayout(horizontalLayout, 0, 4, 1, 1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName("horizontalLayout_2");
        qSendLine_pushButton = new QPushButton(centralwidget);
        qSendLine_pushButton->setObjectName("qSendLine_pushButton");

        horizontalLayout_2->addWidget(qSendLine_pushButton);


        gridLayout->addLayout(horizontalLayout_2, 1, 1, 1, 2);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName("verticalLayout_3");
        qParaMD_pushButton = new QPushButton(centralwidget);
        qParaMD_pushButton->setObjectName("qParaMD_pushButton");

        verticalLayout_3->addWidget(qParaMD_pushButton);

        qStartSendMD_pushButton = new QPushButton(centralwidget);
        qStartSendMD_pushButton->setObjectName("qStartSendMD_pushButton");

        verticalLayout_3->addWidget(qStartSendMD_pushButton);


        gridLayout->addLayout(verticalLayout_3, 1, 3, 1, 2);

        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 667, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName("statusbar");
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        label->setText(QCoreApplication::translate("MainWindow", "EN SCISSOR (1 = STOP)", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "EN SERVO", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "DIR SCISSOR", nullptr));
        label_4->setText(QCoreApplication::translate("MainWindow", "DIR SERVO", nullptr));
        qSendLine_pushButton->setText(QCoreApplication::translate("MainWindow", "START BROADCASTING WITH FPGA", nullptr));
        qParaMD_pushButton->setText(QCoreApplication::translate("MainWindow", "PARAAAAA", nullptr));
        qStartSendMD_pushButton->setText(QCoreApplication::translate("MainWindow", "START BROADCASTING MOTORDRIVERS", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
