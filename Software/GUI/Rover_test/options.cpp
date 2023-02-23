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

void Options::setIPs(QString IPbeagle, QString IPespFront, QString IPespTop)
{
    BBBip = IPbeagle;
    ESPfrontIp = IPespFront;
    ESPtopIp = IPespTop;
}

void Options::setPorts(quint16 portBeagle, quint16 portESPfront, quint16 portESPtop)
{
    BBBport = portBeagle;
    ESPfrontPort = portESPfront;
    ESPtopPort = portESPtop;
}

void Options::writeIPs(QString IPbeagle, QString IPespFront, QString IPespTop)
{
    ui->qBBBip_lineEdit->setText(IPbeagle);
    ui->qESPfrontIP_lineEdit->setText(IPespFront);
    ui->qESPtopIp_lineEdit->setText(IPespTop);
}

void Options::writePorts(quint16 portBeagle, quint16 portESPfront, quint16 portESPtop)
{
    ui->qBBB_spinBox->setValue(portBeagle);
    ui->qESPfront_spinBox->setValue(portESPfront);
    ui->qESPtop_spinBox->setValue(portESPtop);
}

void Options::on_qReset_pushButton_clicked()
{
    ui->qBBBip_lineEdit->setText(BBBip);
    ui->qBBB_spinBox->setValue(BBBport);
    ui->qESPfrontIP_lineEdit->setText(ESPfrontIp);
    ui->qESPfront_spinBox->setValue(ESPfrontPort);
    ui->qESPtopIp_lineEdit->setText(ESPtopIp);
    ui->qESPtop_spinBox->setValue(ESPtopPort);

}

