#include "Utility.h"
using namespace std;

Utility::Utility()
{

}

QString Utility::XmlCreateTag(const QString &text, bool is_start_tag)
{
    QString ret;

    if(is_start_tag)
    {
        ret = "<"+text+">";
    }
     else
    {
        ret = "</"+text+">";
    }
    return ret;
}

QString Utility::GetXmlStr(const QString &textXml, const QString &tagXml)
{
    QString ret;
    int istart, iend;
    int indexStart, lengStr;


    istart = textXml.indexOf("<"+tagXml+">");
    iend = textXml.indexOf("</"+tagXml+">");
    indexStart = istart+tagXml.length()+2;
    lengStr = iend - indexStart;
    ret = textXml.mid(indexStart, lengStr);

    return ret;
}

QString Utility::GetXmlStr(const QString &textXml, const QString &tagXml1, const QString &tagXml2)
{
    QString ret;
    int istart, iend;
    int indexStart, lengStr;


    istart = textXml.indexOf("<"+tagXml1+">");
    iend = textXml.indexOf("</"+tagXml1+">");
    indexStart = istart+tagXml1.length()+2;
    lengStr = iend - indexStart;
    ret = textXml.mid(indexStart, lengStr);

    istart = ret.indexOf("<"+tagXml2+">");
    iend = ret.indexOf("</"+tagXml2+">");
    indexStart = istart+tagXml2.length()+2;
    lengStr = iend - indexStart;
    ret = ret.mid(indexStart, lengStr);

    return ret;
}


float Utility::GetXmlFloat(const QString& textXml,const QString& tag)
{
    return textXml.mid(GetStart(textXml, tag), GetLen(textXml, tag)).toFloat();
}

int Utility::GetXmlInt(const QString& textXml,const QString& tag)
{
    return textXml.mid(GetStart(textXml, tag), GetLen(textXml, tag)).toInt();
}

QVector<float> Utility::GetXmlVector(const QString& xml,const QString& tag)
{
    QVector<float> ret;
    QString constens = GetXmlStr(xml, tag).trimmed();

    if (constens.startsWith("[") && constens.endsWith("]"))
    {
            constens = constens.mid(1,constens.length()-2);
            QStringList values = constens.split(",");
            ret.resize(values.length());
            for(int i= 0; i<values.length(); i++)
            {
                ret[i]=values[i].toFloat();
            }
    }
    return ret;
}

QString Utility::GetXmlTag(const QString &text)
{
    int end_tag = text.indexOf(">");
    return text.mid(2,end_tag);
}

int Utility::GetStart(const QString &textXml, const QString &tagXml)
{
    int istart;

    istart = textXml.indexOf("<"+tagXml+">") +tagXml.length()+2;

    return istart;
}

int Utility::GetLen(const QString &textXml, const QString &tagXml)
{
    int istart, iend;
    int indexStart, lengStr;


    istart = textXml.indexOf("<"+tagXml+">");
    iend = textXml.indexOf("</"+tagXml+">");
    indexStart = istart+tagXml.length()+2;
    lengStr = iend - indexStart;

    return lengStr;
}



