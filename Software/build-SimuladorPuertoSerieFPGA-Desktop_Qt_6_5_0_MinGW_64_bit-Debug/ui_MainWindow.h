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
#include <QtWidgets/QSpacerItem>
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
    QVBoxLayout *verticalLayout;
    QSpinBox *qenableScissorSpinBox;
    QSpinBox *qenableServoSpinBox;
    QSpinBox *qdirScissorSpinBox;
    QSpinBox *qdirServoSpinBox;
    QVBoxLayout *verticalLayout_2;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QVBoxLayout *verticalLayout_3;
    QPushButton *qParaMD_pushButton;
    QPushButton *qStartSendMD_pushButton;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *qSendLine_pushButton;
    QGridLayout *gridLayout_2;
    QPushButton *qDcha_pushButton_2;
    QSpacerItem *horizontalSpacer;
    QSpacerItem *horizontalSpacer_3;
    QSpacerItem *horizontalSpacer_4;
    QPushButton *qAtras_pushButton_4;
    QSpacerItem *horizontalSpacer_5;
    QPushButton *qAvantiVConst_pushButton_3;
    QPushButton *qIzda_pushButton;
    QSpinBox *qPercSpeed_spinBox;
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

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName("verticalLayout_3");
        qParaMD_pushButton = new QPushButton(centralwidget);
        qParaMD_pushButton->setObjectName("qParaMD_pushButton");

        verticalLayout_3->addWidget(qParaMD_pushButton);

        qStartSendMD_pushButton = new QPushButton(centralwidget);
        qStartSendMD_pushButton->setObjectName("qStartSendMD_pushButton");

        verticalLayout_3->addWidget(qStartSendMD_pushButton);


        gridLayout->addLayout(verticalLayout_3, 1, 3, 1, 2);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName("horizontalLayout_2");
        qSendLine_pushButton = new QPushButton(centralwidget);
        qSendLine_pushButton->setObjectName("qSendLine_pushButton");

        horizontalLayout_2->addWidget(qSendLine_pushButton);


        gridLayout->addLayout(horizontalLayout_2, 1, 1, 1, 2);

        gridLayout_2 = new QGridLayout();
        gridLayout_2->setObjectName("gridLayout_2");
        qDcha_pushButton_2 = new QPushButton(centralwidget);
        qDcha_pushButton_2->setObjectName("qDcha_pushButton_2");

        gridLayout_2->addWidget(qDcha_pushButton_2, 1, 2, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer, 0, 0, 1, 1);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_3, 0, 2, 1, 1);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_4, 3, 2, 1, 1);

        qAtras_pushButton_4 = new QPushButton(centralwidget);
        qAtras_pushButton_4->setObjectName("qAtras_pushButton_4");

        gridLayout_2->addWidget(qAtras_pushButton_4, 3, 1, 1, 1);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_5, 3, 0, 1, 1);

        qAvantiVConst_pushButton_3 = new QPushButton(centralwidget);
        qAvantiVConst_pushButton_3->setObjectName("qAvantiVConst_pushButton_3");

        gridLayout_2->addWidget(qAvantiVConst_pushButton_3, 0, 1, 1, 1);

        qIzda_pushButton = new QPushButton(centralwidget);
        qIzda_pushButton->setObjectName("qIzda_pushButton");

        gridLayout_2->addWidget(qIzda_pushButton, 1, 0, 1, 1);

        qPercSpeed_spinBox = new QSpinBox(centralwidget);
        qPercSpeed_spinBox->setObjectName("qPercSpeed_spinBox");
        qPercSpeed_spinBox->setMaximum(100);
        qPercSpeed_spinBox->setSingleStep(10);
        qPercSpeed_spinBox->setValue(50);

        gridLayout_2->addWidget(qPercSpeed_spinBox, 1, 1, 1, 1);


        gridLayout->addLayout(gridLayout_2, 0, 4, 1, 1);

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
        qParaMD_pushButton->setText(QCoreApplication::translate("MainWindow", "PARAAAAA", nullptr));
        qStartSendMD_pushButton->setText(QCoreApplication::translate("MainWindow", "START BROADCASTING MOTORDRIVERS", nullptr));
        qSendLine_pushButton->setText(QCoreApplication::translate("MainWindow", "START BROADCASTING WITH FPGA", nullptr));
        qDcha_pushButton_2->setText(QCoreApplication::translate("MainWindow", "DERECHA", nullptr));
        qAtras_pushButton_4->setText(QCoreApplication::translate("MainWindow", "PATRAS", nullptr));
        qAvantiVConst_pushButton_3->setText(QCoreApplication::translate("MainWindow", "AVANTI", nullptr));
        qIzda_pushButton->setText(QCoreApplication::translate("MainWindow", "IZQ", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
