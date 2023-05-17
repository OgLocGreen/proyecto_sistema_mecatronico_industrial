#ifndef LOG_H
#define LOG_H

#include <QString>
#include <QFile>
#include <QTextStream>
#include <QDate>

#include "Data.h"
#include "Utility.h"
class Log: public QObject
{
    Q_OBJECT
    Data myData;
    Utility util;
private:
    // path for the log file
    QString log_file_path;
    // path for the xml file
    QString xml_file_path;
    // path for the config file
    QString config_file_path;
public:
    Log();
    // constructor for the Log Class with all paths
    Log(QString path_log, QString path_xml, QString path_config);
    // make a log
    void setDatosLog(QString log_msg);
    void setDatosLog(QString log_msg,QString log_path);
    // set the log path
    void setLogPath(QString path);
    // read the log file
    QString readLogFile();

    // set the xml path
    void setXmlPath(QString path);
    // saves the xml file
    void saveXmlFile(QString xml);

    // set the config path
    void setConfigPath(QString path);
    // read the config file
    QString readConfigFile();

public slots:
    // slot for the boradcast of the log file
    void onTimer();
    // add msg to the the log file
    void OnAddToLog(const QString& NewDataLogIn);

signals:
    // signal to send data to the clients
    void sendToPC(QString txt);

};

#endif // LOG_H
