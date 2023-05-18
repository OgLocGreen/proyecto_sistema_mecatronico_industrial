/********************************************************************************
** Form generated from reading UI file 'options.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_OPTIONS_H
#define UI_OPTIONS_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>

QT_BEGIN_NAMESPACE

class Ui_Options
{
public:
    QFormLayout *formLayout;
    QLabel *label_7;
    QLabel *label;
    QLineEdit *qBBBip_lineEdit;
    QLabel *label_2;
    QLabel *label_6;
    QLabel *label_3;
    QLineEdit *qESPfrontIP_lineEdit;
    QLabel *label_4;
    QLabel *label_5;
    QLabel *label_8;
    QLineEdit *qESPtopIp_lineEdit;
    QLabel *label_9;
    QDialogButtonBox *buttonBox;
    QPushButton *qReset_pushButton;
    QSpinBox *qBBB_spinBox;
    QSpinBox *qESPfront_spinBox;
    QSpinBox *qESPtop_spinBox;

    void setupUi(QDialog *Options)
    {
        if (Options->objectName().isEmpty())
            Options->setObjectName("Options");
        Options->resize(394, 394);
        Options->setMaximumSize(QSize(500, 394));
        formLayout = new QFormLayout(Options);
        formLayout->setObjectName("formLayout");
        label_7 = new QLabel(Options);
        label_7->setObjectName("label_7");

        formLayout->setWidget(2, QFormLayout::LabelRole, label_7);

        label = new QLabel(Options);
        label->setObjectName("label");

        formLayout->setWidget(3, QFormLayout::LabelRole, label);

        qBBBip_lineEdit = new QLineEdit(Options);
        qBBBip_lineEdit->setObjectName("qBBBip_lineEdit");
        qBBBip_lineEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        formLayout->setWidget(3, QFormLayout::FieldRole, qBBBip_lineEdit);

        label_2 = new QLabel(Options);
        label_2->setObjectName("label_2");

        formLayout->setWidget(4, QFormLayout::LabelRole, label_2);

        label_6 = new QLabel(Options);
        label_6->setObjectName("label_6");

        formLayout->setWidget(5, QFormLayout::LabelRole, label_6);

        label_3 = new QLabel(Options);
        label_3->setObjectName("label_3");

        formLayout->setWidget(6, QFormLayout::LabelRole, label_3);

        qESPfrontIP_lineEdit = new QLineEdit(Options);
        qESPfrontIP_lineEdit->setObjectName("qESPfrontIP_lineEdit");
        qESPfrontIP_lineEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        formLayout->setWidget(6, QFormLayout::FieldRole, qESPfrontIP_lineEdit);

        label_4 = new QLabel(Options);
        label_4->setObjectName("label_4");

        formLayout->setWidget(7, QFormLayout::LabelRole, label_4);

        label_5 = new QLabel(Options);
        label_5->setObjectName("label_5");

        formLayout->setWidget(8, QFormLayout::LabelRole, label_5);

        label_8 = new QLabel(Options);
        label_8->setObjectName("label_8");

        formLayout->setWidget(9, QFormLayout::LabelRole, label_8);

        qESPtopIp_lineEdit = new QLineEdit(Options);
        qESPtopIp_lineEdit->setObjectName("qESPtopIp_lineEdit");
        qESPtopIp_lineEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        formLayout->setWidget(9, QFormLayout::FieldRole, qESPtopIp_lineEdit);

        label_9 = new QLabel(Options);
        label_9->setObjectName("label_9");

        formLayout->setWidget(11, QFormLayout::LabelRole, label_9);

        buttonBox = new QDialogButtonBox(Options);
        buttonBox->setObjectName("buttonBox");
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        formLayout->setWidget(13, QFormLayout::SpanningRole, buttonBox);

        qReset_pushButton = new QPushButton(Options);
        qReset_pushButton->setObjectName("qReset_pushButton");

        formLayout->setWidget(1, QFormLayout::LabelRole, qReset_pushButton);

        qBBB_spinBox = new QSpinBox(Options);
        qBBB_spinBox->setObjectName("qBBB_spinBox");
        qBBB_spinBox->setLayoutDirection(Qt::LeftToRight);
        qBBB_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qBBB_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qBBB_spinBox->setMaximum(65535);
        qBBB_spinBox->setValue(9999);

        formLayout->setWidget(4, QFormLayout::FieldRole, qBBB_spinBox);

        qESPfront_spinBox = new QSpinBox(Options);
        qESPfront_spinBox->setObjectName("qESPfront_spinBox");
        qESPfront_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qESPfront_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qESPfront_spinBox->setMaximum(65535);
        qESPfront_spinBox->setValue(9999);

        formLayout->setWidget(7, QFormLayout::FieldRole, qESPfront_spinBox);

        qESPtop_spinBox = new QSpinBox(Options);
        qESPtop_spinBox->setObjectName("qESPtop_spinBox");
        qESPtop_spinBox->setFrame(true);
        qESPtop_spinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        qESPtop_spinBox->setButtonSymbols(QAbstractSpinBox::NoButtons);
        qESPtop_spinBox->setMaximum(65535);
        qESPtop_spinBox->setValue(9999);

        formLayout->setWidget(11, QFormLayout::FieldRole, qESPtop_spinBox);


        retranslateUi(Options);
        QObject::connect(buttonBox, &QDialogButtonBox::accepted, Options, qOverload<>(&QDialog::accept));
        QObject::connect(buttonBox, &QDialogButtonBox::rejected, Options, qOverload<>(&QDialog::reject));

        QMetaObject::connectSlotsByName(Options);
    } // setupUi

    void retranslateUi(QDialog *Options)
    {
        Options->setWindowTitle(QCoreApplication::translate("Options", "Connections", nullptr));
        label_7->setText(QCoreApplication::translate("Options", "BBB", nullptr));
        label->setText(QCoreApplication::translate("Options", "IP address:", nullptr));
        qBBBip_lineEdit->setText(QString());
        label_2->setText(QCoreApplication::translate("Options", "Port:", nullptr));
        label_6->setText(QCoreApplication::translate("Options", "ESP front ", nullptr));
        label_3->setText(QCoreApplication::translate("Options", "IP address:", nullptr));
        label_4->setText(QCoreApplication::translate("Options", "Port:", nullptr));
        label_5->setText(QCoreApplication::translate("Options", "ESP top", nullptr));
        label_8->setText(QCoreApplication::translate("Options", "IP address:", nullptr));
        label_9->setText(QCoreApplication::translate("Options", "Port:", nullptr));
        qReset_pushButton->setText(QCoreApplication::translate("Options", "Reset", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Options: public Ui_Options {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_OPTIONS_H
