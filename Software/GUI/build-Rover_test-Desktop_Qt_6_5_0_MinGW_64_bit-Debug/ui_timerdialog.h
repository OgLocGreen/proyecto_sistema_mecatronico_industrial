/********************************************************************************
** Form generated from reading UI file 'timerdialog.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TIMERDIALOG_H
#define UI_TIMERDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpinBox>

QT_BEGIN_NAMESPACE

class Ui_TimerDialog
{
public:
    QFormLayout *formLayout;
    QLabel *qLogfile_label;
    QSpinBox *qLogfile_spinBox;
    QDialogButtonBox *buttonBox;
    QSpinBox *qController_spinBox;
    QLabel *QController_label;
    QSpinBox *qSensor_spinBox;
    QLabel *qSensor_label;
    QSpinBox *qBroadcast_spinBox;
    QLabel *qBroadcast_label;
    QLabel *label;

    void setupUi(QDialog *TimerDialog)
    {
        if (TimerDialog->objectName().isEmpty())
            TimerDialog->setObjectName("TimerDialog");
        TimerDialog->resize(381, 224);
        formLayout = new QFormLayout(TimerDialog);
        formLayout->setObjectName("formLayout");
        qLogfile_label = new QLabel(TimerDialog);
        qLogfile_label->setObjectName("qLogfile_label");

        formLayout->setWidget(4, QFormLayout::LabelRole, qLogfile_label);

        qLogfile_spinBox = new QSpinBox(TimerDialog);
        qLogfile_spinBox->setObjectName("qLogfile_spinBox");
        qLogfile_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qLogfile_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qLogfile_spinBox->setMinimum(10000);
        qLogfile_spinBox->setMaximum(60000);

        formLayout->setWidget(4, QFormLayout::FieldRole, qLogfile_spinBox);

        buttonBox = new QDialogButtonBox(TimerDialog);
        buttonBox->setObjectName("buttonBox");
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        formLayout->setWidget(5, QFormLayout::FieldRole, buttonBox);

        qController_spinBox = new QSpinBox(TimerDialog);
        qController_spinBox->setObjectName("qController_spinBox");
        qController_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qController_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qController_spinBox->setMinimum(10);
        qController_spinBox->setMaximum(1000);

        formLayout->setWidget(1, QFormLayout::FieldRole, qController_spinBox);

        QController_label = new QLabel(TimerDialog);
        QController_label->setObjectName("QController_label");

        formLayout->setWidget(1, QFormLayout::LabelRole, QController_label);

        qSensor_spinBox = new QSpinBox(TimerDialog);
        qSensor_spinBox->setObjectName("qSensor_spinBox");
        qSensor_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qSensor_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qSensor_spinBox->setMinimum(10);
        qSensor_spinBox->setMaximum(1000);

        formLayout->setWidget(2, QFormLayout::FieldRole, qSensor_spinBox);

        qSensor_label = new QLabel(TimerDialog);
        qSensor_label->setObjectName("qSensor_label");

        formLayout->setWidget(2, QFormLayout::LabelRole, qSensor_label);

        qBroadcast_spinBox = new QSpinBox(TimerDialog);
        qBroadcast_spinBox->setObjectName("qBroadcast_spinBox");
        qBroadcast_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qBroadcast_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qBroadcast_spinBox->setMinimum(10);
        qBroadcast_spinBox->setMaximum(1000);

        formLayout->setWidget(3, QFormLayout::FieldRole, qBroadcast_spinBox);

        qBroadcast_label = new QLabel(TimerDialog);
        qBroadcast_label->setObjectName("qBroadcast_label");

        formLayout->setWidget(3, QFormLayout::LabelRole, qBroadcast_label);

        label = new QLabel(TimerDialog);
        label->setObjectName("label");

        formLayout->setWidget(0, QFormLayout::LabelRole, label);


        retranslateUi(TimerDialog);
        QObject::connect(buttonBox, &QDialogButtonBox::accepted, TimerDialog, qOverload<>(&QDialog::accept));
        QObject::connect(buttonBox, &QDialogButtonBox::rejected, TimerDialog, qOverload<>(&QDialog::reject));

        QMetaObject::connectSlotsByName(TimerDialog);
    } // setupUi

    void retranslateUi(QDialog *TimerDialog)
    {
        TimerDialog->setWindowTitle(QCoreApplication::translate("TimerDialog", "Timer Settings", nullptr));
        qLogfile_label->setText(QCoreApplication::translate("TimerDialog", "Logfile", nullptr));
        QController_label->setText(QCoreApplication::translate("TimerDialog", "Controller", nullptr));
        qSensor_label->setText(QCoreApplication::translate("TimerDialog", "Sensors", nullptr));
        qBroadcast_label->setText(QCoreApplication::translate("TimerDialog", "Broadcast", nullptr));
        label->setText(QCoreApplication::translate("TimerDialog", "Set timer [ms]", nullptr));
    } // retranslateUi

};

namespace Ui {
    class TimerDialog: public Ui_TimerDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TIMERDIALOG_H
