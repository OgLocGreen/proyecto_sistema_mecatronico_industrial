#include "options.h"
#include "ui_options.h"

Options::Options(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Options)
{
    ui->setupUi(this);
}

Options::~Options()
{
    delete ui;
}

QString Options::getBBBip()
{
    return ui->qBBBip_lineEdit->text();
}

quint16 Options::getBBBport()
{
    return ui->qBBB_spinBox->value();
}

QString Options::getESPtopIp()
{
    return ui->qESPtopIp_lineEdit->text();
}

quint16 Options::getESPtopPort()
{
    return ui->qESPtop_spinBox->value();
}

QString Options::getESPfrontIp()
{
    return ui->qESPfrontIP_lineEdit->text();
}

quint16 Options::getESPfrontPort()
{
    return ui->qESPfront_spinBox->value();
}

void Options::on_qReset_pushButton_clicked()
{
    ui->qBBBip_lineEdit->setText("192.168.100.102");
    ui->qBBB_spinBox->setValue(5000);
    ui->qESPfrontIP_lineEdit->setText("192.168.100.103");
    ui->qESPfront_spinBox->setValue(5000);
    ui->qESPtopIp_lineEdit->setText("192.168.100.104");
    ui->qESPtop_spinBox->setValue(5000);

}

