#ifndef TRAJWIDGET_H
#define TRAJWIDGET_H

#include <QWidget>

namespace Ui {
class trajWidget;
}

class trajWidget : public QWidget
{
    Q_OBJECT

public:
    explicit trajWidget(QWidget *parent = nullptr);
    ~trajWidget();

private:
    Ui::trajWidget *ui;
};

#endif // TRAJWIDGET_H
