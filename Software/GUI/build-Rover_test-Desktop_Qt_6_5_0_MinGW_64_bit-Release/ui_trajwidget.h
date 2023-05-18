/********************************************************************************
** Form generated from reading UI file 'trajwidget.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TRAJWIDGET_H
#define UI_TRAJWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_trajWidget
{
public:

    void setupUi(QWidget *trajWidget)
    {
        if (trajWidget->objectName().isEmpty())
            trajWidget->setObjectName("trajWidget");
        trajWidget->resize(400, 300);

        retranslateUi(trajWidget);

        QMetaObject::connectSlotsByName(trajWidget);
    } // setupUi

    void retranslateUi(QWidget *trajWidget)
    {
        trajWidget->setWindowTitle(QCoreApplication::translate("trajWidget", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class trajWidget: public Ui_trajWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TRAJWIDGET_H
