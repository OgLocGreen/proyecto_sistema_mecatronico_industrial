#include "camwindow.h"
#include "ui_camwindow.h"

CamWindow::CamWindow(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::CamWindow)
{
    ui->setupUi(this);
}

CamWindow::~CamWindow()
{
    delete ui;
}
