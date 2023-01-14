#ifndef OPTIONS_H
#define OPTIONS_H

#include <QDialog>

namespace Ui {
class Options;
}

class Options : public QDialog
{
    Q_OBJECT

    QString BBBip;
    QString ESPtopIp;

public:
    explicit Options(QWidget *parent = nullptr);
    ~Options();


    QString getBBBip();
    quint16 getBBBport();
    QString getESPtopIp();
    quint16 getESPtopPort();
    QString getESPfrontIp();
    quint16 getESPfrontPort();

    void setBBBip(QString BBBip);
    void setBBBport(quint16 BBBport);
    void setESPtopIp(QString ESPtopIp);
    void setESPtopPort(quint16 ESPtopPort);
    void setESPfrontIp(QString ESPfrontIp);
    void setESPfrontPort(quint16 ESPfrontPort);


private slots:
    void on_qReset_pushButton_clicked();

private:
    Ui::Options *ui;
};

#endif // OPTIONS_H
