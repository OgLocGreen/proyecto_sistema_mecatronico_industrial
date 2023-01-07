#ifndef FPGA_H
#define FPGA_H

#include <QObject>

class Fpga : public QObject
{
    Q_OBJECT;
private:
    int fpga_data;
    int tmp_var;
public:
    Fpga();

public slots:
    void OnDataReceived(QString arg1, QString arg2);
};

#endif // FPGA_H
