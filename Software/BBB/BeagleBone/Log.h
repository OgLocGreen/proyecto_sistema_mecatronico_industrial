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
    QString log_file_path;
    QString xml_file_path;
    QString config_file_path;
public:
    Log();
    Log(QString path_log, QString path_xml, QString path_config);
    void setDatosLog(QString log_msg);
    void setDatosLog(QString log_msg,QString log_path);
    void OnAddToLog(const QString& NewDataLogIn);
    void OnAddToLog(const QString& NewDataLogIn,QString log_path);

    void setLogPath(QString path);

    void setXmlPath(QString path);
    void saveXmlFile(QString xml);

    void setConfigPath(QString path);
    QString readConfigFile();
    //void saveConfigFile(QString xml);

};

#endif // LOG_H
