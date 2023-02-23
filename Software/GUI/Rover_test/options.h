#ifndef OPTIONS_H
#define OPTIONS_H

#include <QDialog>

namespace Ui {
class Options;
}

class Options : public QDialog
{
    Q_OBJECT

    QString BBBip, ESPtopIp, ESPfrontIp;
    quint16 BBBport, ESPtopPort, ESPfrontPort;


public:
    explicit Options(QWidget *parent = nullptr);
    ~Options();


    QString getBBBip();
    quint16 getBBBport();
    QString getESPtopIp();
    quint16 getESPtopPort();
    QString getESPfrontIp();
    quint16 getESPfrontPort();

    void setIPs(QString IPbeagle, QString IPespFront, QString IPespTop);
    void setPorts(quint16 portBeagle, quint16 portESPfront, quint16 portESPtop);
    void writeIPs(QString IPbeagle, QString IPespFront, QString IPespTop);
    void writePorts(quint16 portBeagle, quint16 portESPfront, quint16 portESPtop);


private slots:
    void on_qReset_pushButton_clicked();

private:
    Ui::Options *ui;
};

#endif // OPTIONS_H
