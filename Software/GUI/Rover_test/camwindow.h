#ifndef CAMWINDOW_H
#define CAMWINDOW_H

#include <QDialog>

namespace Ui {
class CamWindow;
}

class CamWindow : public QDialog
{
    Q_OBJECT

public:
    explicit CamWindow(QWidget *parent = nullptr);
    ~CamWindow();

private:
    Ui::CamWindow *ui;
};

#endif // CAMWINDOW_H
