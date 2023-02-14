#include "Log.h"

Log::Log()
{

}

Log::Log(QString path_log, QString path_xml, QString config_path)
{
    log_file_path = path_log;
    xml_file_path = path_xml;
    config_file_path = config_path;
}

void Log::setDatosLog(QString log_msg)
{
    QString lastlog;

    QFile log(log_file_path);

    if (log.open(QIODevice::ReadOnly)){
        QTextStream leer(&log);
        lastlog.append(leer.readAll());
        log.close();
    }
    if (log.open(QIODevice::WriteOnly)){
        QTextStream escribir(&log);
        escribir<<lastlog;
        escribir<<log_msg;
        log.close();
    }
}

void Log::setDatosLog(QString log_msg,QString log_path)
{
    QString lastlog;

    QFile log(log_path);

    if (log.open(QIODevice::ReadOnly)){
        QTextStream leer(&log);
        lastlog.append(leer.readAll());
        log.close();
    }
    if (log.open(QIODevice::WriteOnly)){
        QTextStream escribir(&log);
        escribir<<lastlog;
        escribir<<log_msg;
        log.close();
    }
}

void Log::OnAddToLog(const QString& NewDataLogIn)

{
    QString NewDataLog;
    NewDataLog.append(QDateTime::currentDateTime().toString("hh.mm.ss"));
    NewDataLog.append(" ");
    NewDataLog.append(QDate::currentDate().toString("dd.MM.yyyy"));
    NewDataLog.append(" ");
    NewDataLog.append(NewDataLogIn);
    NewDataLog.append("\r\n");
    setDatosLog(NewDataLog, log_file_path);

}

void Log::setLogPath(QString path)
{
    log_file_path = path;
}

void Log::setXmlPath(QString path)
{
    xml_file_path = path;
}

void Log::setConfigPath(QString path)
{
    config_file_path = path;
}

void Log::saveXmlFile(QString xml)
{
    QFile xml_file(xml_file_path);


    if (xml_file.open(QIODevice::WriteOnly)){
        QTextStream escribir(&xml_file);
        escribir<<xml;
        xml_file.close();
    }

}

QString Log::readConfigFile()
{
    QString config_temp;
    QFile xml_file(config_file_path);

    if (xml_file.open(QIODevice::ReadOnly)){
        QTextStream leer(&xml_file);
        config_temp.append(leer.readAll());
        xml_file.close();
    }
    return config_temp;
}

QString Log::readLogFile()
{
    QString config_temp;
    QFile xml_file(log_file_path);

    if (xml_file.open(QIODevice::ReadOnly)){
        QTextStream leer(&xml_file);
        config_temp.append(leer.readAll());
        xml_file.close();
    }
    return config_temp;
}

void Log::onTimer()
{
    QString log = "<log>";
    log.append(readLogFile());
    log.append("</log>");
    emit sendToPC(log);

}
