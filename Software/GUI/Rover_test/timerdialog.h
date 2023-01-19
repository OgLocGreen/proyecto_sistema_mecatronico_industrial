#ifndef TIMERDIALOG_H
#define TIMERDIALOG_H

#include <QDialog>

namespace Ui {
class TimerDialog;
}

class TimerDialog : public QDialog
{
    Q_OBJECT

public:
    explicit TimerDialog(QWidget *parent = nullptr);
    ~TimerDialog();

    int getControllerTime();
    int getSensorTime();
    int getBroadcastTime();
    int getLogfileTime();

    void setTimes(int controller, int sensor, int broadcast, int logfile);

private:
    Ui::TimerDialog *ui;
};

#endif // TIMERDIALOG_H
