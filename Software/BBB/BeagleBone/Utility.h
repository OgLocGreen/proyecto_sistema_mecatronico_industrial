#ifndef UTILITY_H
#define UTILITY_H


#include <QString>
#include <QTextStream>
#include <QVector>
#include <QFile>
#include <QTextStream>
#include <QDateTime>


class Utility
{    
private:
    QString xml_file_path;
    //QString xml_data;

public:
    Utility();

    void SetXmlPath(QString path);

    // Get_XML
    int GetXmlInt(const QString& textXml,const QString& tag);
    float GetXmlFloat(const QString& textXml,const QString& tag);
    QVector<float> GetXmlVector(const QString& xml,const QString& tag);
    QString GetXmlTag(const QString& text);
    QString GetXmlStr(const QString& text, const QString& tag);

    //Set_XML
    int GetLen(const QString &textXml, const QString &tagXml);
    int GetStart(const QString &textXml, const QString &tagXml);
    QString XmlCreateTag(const QString& text, bool is_start_tag);



    // XML_File
    QString ReadXmlFile();
    QString ReadXmlFile(QString xml_path);
    int WriteXmlFile(QString xml_msg);
    int WriteXmlFile(QString xml_msg, QString xml_path); // return 1 wenn all good
    int AppenedToXmlFile(QString xml_msg);
    int AppenedToXmlFile(QString xml_msg,QString xml_path);

    QString RemoveXmlData(QString xml_data, QString xml_tag);

    // Log_File // reserve
    void LogTextString(QString text1, QString path);
    void LogTextStream(QTextStream text1, QString path);

};

#endif // UTILITY_H
