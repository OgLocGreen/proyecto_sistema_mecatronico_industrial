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

public:
    Utility();

    // Get_XML
    QString GetXmlTag(const QString& text);
    QString GetXmlStr(const QString& text, const QString& tag);
    QString GetXmlStr(const QString &textXml, const QString &tagXml1, const QString &tagXml2);

    //Set_XML
    int GetLen(const QString &textXml, const QString &tagXml);
    int GetStart(const QString &textXml, const QString &tagXml);
    QString XmlCreateTag(const QString& text, bool is_start_tag);
};

#endif // UTILITY_H
