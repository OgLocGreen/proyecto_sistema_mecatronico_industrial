#include "trajwidget.h"
#include "ui_trajwidget.h"

trajWidget::trajWidget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::trajWidget)
{
    ui->setupUi(this);
}

trajWidget::~trajWidget()
{
    delete ui;
}
