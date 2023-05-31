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
    QVBoxLayout *verticalLayout_2;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QGridLayout *gridLayout_3;
    QPushButton *qSUBESERVO_pushbutton;
    QPushButton *qBAJASERVO_pushButton_4;
    QPushButton *qSUBETIJERA_pushButton;
    QPushButton *qBAJATIJERA_pushbutton;
    QSpinBox *qValueSERVOANGLE_spinBox_2;
    QGridLayout *gridLayout_2;
    QPushButton *qIzda_pushButton;
    QPushButton *qDcha_pushButton_2;
    QSpacerItem *horizontalSpacer;
    QPushButton *qAvantiVConst_pushButton_3;
    QSpinBox *qPercSpeed_spinBox;
    QPushButton *qAtras_pushButton_4;
    QSpacerItem *horizontalSpacer_3;
    QSpacerItem *horizontalSpacer_5;
    QSpacerItem *horizontalSpacer_4;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(711, 351);
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

        label_5 = new QLabel(centralwidget);
        label_5->setObjectName("label_5");

        verticalLayout_2->addWidget(label_5);


        gridLayout->addLayout(verticalLayout_2, 0, 1, 1, 2);

        gridLayout_3 = new QGridLayout();
        gridLayout_3->setObjectName("gridLayout_3");
        qSUBESERVO_pushbutton = new QPushButton(centralwidget);
        qSUBESERVO_pushbutton->setObjectName("qSUBESERVO_pushbutton");

        gridLayout_3->addWidget(qSUBESERVO_pushbutton, 0, 0, 1, 1);

        qBAJASERVO_pushButton_4 = new QPushButton(centralwidget);
        qBAJASERVO_pushButton_4->setObjectName("qBAJASERVO_pushButton_4");

        gridLayout_3->addWidget(qBAJASERVO_pushButton_4, 2, 0, 1, 1);

        qSUBETIJERA_pushButton = new QPushButton(centralwidget);
        qSUBETIJERA_pushButton->setObjectName("qSUBETIJERA_pushButton");

        gridLayout_3->addWidget(qSUBETIJERA_pushButton, 0, 1, 1, 1);

        qBAJATIJERA_pushbutton = new QPushButton(centralwidget);
        qBAJATIJERA_pushbutton->setObjectName("qBAJATIJERA_pushbutton");

        gridLayout_3->addWidget(qBAJATIJERA_pushbutton, 2, 1, 1, 1);

        qValueSERVOANGLE_spinBox_2 = new QSpinBox(centralwidget);
        qValueSERVOANGLE_spinBox_2->setObjectName("qValueSERVOANGLE_spinBox_2");
        qValueSERVOANGLE_spinBox_2->setReadOnly(true);
        qValueSERVOANGLE_spinBox_2->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qValueSERVOANGLE_spinBox_2->setMaximum(31);
        qValueSERVOANGLE_spinBox_2->setValue(10);

        gridLayout_3->addWidget(qValueSERVOANGLE_spinBox_2, 1, 0, 1, 1);


        gridLayout->addLayout(gridLayout_3, 0, 3, 1, 2);

        gridLayout_2 = new QGridLayout();
        gridLayout_2->setObjectName("gridLayout_2");
        qIzda_pushButton = new QPushButton(centralwidget);
        qIzda_pushButton->setObjectName("qIzda_pushButton");

        gridLayout_2->addWidget(qIzda_pushButton, 1, 0, 1, 1);

        qDcha_pushButton_2 = new QPushButton(centralwidget);
        qDcha_pushButton_2->setObjectName("qDcha_pushButton_2");

        gridLayout_2->addWidget(qDcha_pushButton_2, 1, 2, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer, 0, 0, 1, 1);

        qAvantiVConst_pushButton_3 = new QPushButton(centralwidget);
        qAvantiVConst_pushButton_3->setObjectName("qAvantiVConst_pushButton_3");

        gridLayout_2->addWidget(qAvantiVConst_pushButton_3, 0, 1, 1, 1);

        qPercSpeed_spinBox = new QSpinBox(centralwidget);
        qPercSpeed_spinBox->setObjectName("qPercSpeed_spinBox");
        qPercSpeed_spinBox->setMaximum(100);
        qPercSpeed_spinBox->setSingleStep(10);
        qPercSpeed_spinBox->setValue(50);

        gridLayout_2->addWidget(qPercSpeed_spinBox, 1, 1, 1, 1);

        qAtras_pushButton_4 = new QPushButton(centralwidget);
        qAtras_pushButton_4->setObjectName("qAtras_pushButton_4");

        gridLayout_2->addWidget(qAtras_pushButton_4, 3, 1, 1, 1);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_3, 0, 2, 1, 1);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_5, 3, 0, 1, 1);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer_4, 3, 2, 1, 1);


        gridLayout->addLayout(gridLayout_2, 0, 5, 1, 1);

        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 711, 22));
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
        label_5->setText(QCoreApplication::translate("MainWindow", "CAM VALUE", nullptr));
        qSUBESERVO_pushbutton->setText(QCoreApplication::translate("MainWindow", "SUBE SERVO", nullptr));
        qBAJASERVO_pushButton_4->setText(QCoreApplication::translate("MainWindow", "BAJA SERVO", nullptr));
        qSUBETIJERA_pushButton->setText(QCoreApplication::translate("MainWindow", "SUBE", nullptr));
        qBAJATIJERA_pushbutton->setText(QCoreApplication::translate("MainWindow", "BAJA", nullptr));
        qIzda_pushButton->setText(QCoreApplication::translate("MainWindow", "IZQ", nullptr));
        qDcha_pushButton_2->setText(QCoreApplication::translate("MainWindow", "DERECHA", nullptr));
        qAvantiVConst_pushButton_3->setText(QCoreApplication::translate("MainWindow", "AVANTI", nullptr));
        qAtras_pushButton_4->setText(QCoreApplication::translate("MainWindow", "PATRAS", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
