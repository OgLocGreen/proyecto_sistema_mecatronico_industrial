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
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QSpinBox *qenableScissorSpinBox;
    QSpinBox *qenableServoSpinBox;
    QSpinBox *qdirServoSpinBox;
    QPushButton *qSendLine_pushButton;
    QSpinBox *qdirScissorSpinBox;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(663, 227);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName("gridLayout");
        qenableScissorSpinBox = new QSpinBox(centralwidget);
        qenableScissorSpinBox->setObjectName("qenableScissorSpinBox");
        qenableScissorSpinBox->setMaximum(1);

        gridLayout->addWidget(qenableScissorSpinBox, 0, 1, 1, 1);

        qenableServoSpinBox = new QSpinBox(centralwidget);
        qenableServoSpinBox->setObjectName("qenableServoSpinBox");
        qenableServoSpinBox->setMaximum(1);

        gridLayout->addWidget(qenableServoSpinBox, 1, 1, 1, 1);

        qdirServoSpinBox = new QSpinBox(centralwidget);
        qdirServoSpinBox->setObjectName("qdirServoSpinBox");
        qdirServoSpinBox->setMaximum(1);

        gridLayout->addWidget(qdirServoSpinBox, 4, 1, 1, 1);

        qSendLine_pushButton = new QPushButton(centralwidget);
        qSendLine_pushButton->setObjectName("qSendLine_pushButton");

        gridLayout->addWidget(qSendLine_pushButton, 5, 1, 1, 1);

        qdirScissorSpinBox = new QSpinBox(centralwidget);
        qdirScissorSpinBox->setObjectName("qdirScissorSpinBox");
        qdirScissorSpinBox->setMaximum(1);

        gridLayout->addWidget(qdirScissorSpinBox, 2, 1, 1, 1);

        label = new QLabel(centralwidget);
        label->setObjectName("label");

        gridLayout->addWidget(label, 0, 0, 1, 1);

        label_2 = new QLabel(centralwidget);
        label_2->setObjectName("label_2");

        gridLayout->addWidget(label_2, 1, 0, 1, 1);

        label_3 = new QLabel(centralwidget);
        label_3->setObjectName("label_3");

        gridLayout->addWidget(label_3, 2, 0, 1, 1);

        label_4 = new QLabel(centralwidget);
        label_4->setObjectName("label_4");

        gridLayout->addWidget(label_4, 4, 0, 1, 1);

        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 663, 22));
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
        qSendLine_pushButton->setText(QCoreApplication::translate("MainWindow", "Enviar", nullptr));
        label->setText(QCoreApplication::translate("MainWindow", "EN SCISSOR", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "EN SERVO", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "DIR SCISSOR", nullptr));
        label_4->setText(QCoreApplication::translate("MainWindow", "DIR SERVO", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
