#ifndef CONNECTION_H
#define CONNECTION_H

#include <QObject>
#include <QTcpSocket>
#include <QTcpServer>
#include <QTimer>
#include <QThread>
#include <QXmlStreamReader>
#include <Log.h>
#include <Utility.h>
#include <Data.h>

class Connection : public QObject
{
    Q_OBJECT
    Log logger;
    Data myData;
private:
    struct ClientInfo
    {
         QTcpSocket* socket=nullptr;
         QString name="unknown";
         QHostAddress ip=QHostAddress::Null;
    } ;
    QTcpServer  server;
    QTcpSocket* socket;
    QVector<ClientInfo> cliVector;
    QVector<QString> cliName;
    int counter;
    QThread thread;

    Utility util;

public:
    explicit Connection(QObject *parent = nullptr);  // Constructor

signals:
    void NewData(QString data);
    void AddToLogAlarm(const QString& NewDataLogIn, int LogState);
    void SendDataMotor(QString dataName,QString value);     // issue #18
    void SendDataFpga(QString dataName, QString value);     // issue #19
    void SendDataEspTop(QString dataName,QString value);        // issue #20
    void SendDataEspFront(QString dataName,QString value);      // issue #21
    void Boardcast(QString dataName,QString XmlData);   // issue #17
    void AddToLog(QString txt);

public slots:
    void OnConnectionRequest();
    void OnDataReceived();
    void OnDisconnected();
    void OnSendData(QString txt);



};

#endif // CONNECTION_H
