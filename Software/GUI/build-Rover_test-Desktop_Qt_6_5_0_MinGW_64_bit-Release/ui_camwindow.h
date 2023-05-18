/********************************************************************************
** Form generated from reading UI file 'camwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CAMWINDOW_H
#define UI_CAMWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_CamWindow
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *qCamVideo_label;

    void setupUi(QDialog *CamWindow)
    {
        if (CamWindow->objectName().isEmpty())
            CamWindow->setObjectName("CamWindow");
        CamWindow->resize(622, 322);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(CamWindow->sizePolicy().hasHeightForWidth());
        CamWindow->setSizePolicy(sizePolicy);
        CamWindow->setMaximumSize(QSize(2038, 1156));
        verticalLayout = new QVBoxLayout(CamWindow);
        verticalLayout->setObjectName("verticalLayout");
        qCamVideo_label = new QLabel(CamWindow);
        qCamVideo_label->setObjectName("qCamVideo_label");
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(qCamVideo_label->sizePolicy().hasHeightForWidth());
        qCamVideo_label->setSizePolicy(sizePolicy1);
        qCamVideo_label->setMaximumSize(QSize(600, 300));
        qCamVideo_label->setPixmap(QPixmap(QString::fromUtf8("Cam_Rover.jpeg")));
        qCamVideo_label->setScaledContents(true);

        verticalLayout->addWidget(qCamVideo_label);


        retranslateUi(CamWindow);

        QMetaObject::connectSlotsByName(CamWindow);
    } // setupUi

    void retranslateUi(QDialog *CamWindow)
    {
        CamWindow->setWindowTitle(QCoreApplication::translate("CamWindow", "Camera Rover", nullptr));
        qCamVideo_label->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class CamWindow: public Ui_CamWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CAMWINDOW_H
