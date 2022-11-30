#ifndef CONNECTION_H
#define CONNECTION_H

#include <QObject>
#include <QTcpSocket>
#include <QTcpServer>
#include <QTimer>
#include <QThread>

#include <Utility.h>

class Connection : public QObject
{
    Q_OBJECT
private:
    QTcpServer server;
    QTcpSocket* socket;
   // QTimer timer;
    int counter;
    QThread thread;

    Utility util;

public:

    explicit Connection(QObject *parent = nullptr);  // Constructor

signals:
    void NewData(QString data);
    void AddToLogAlarm(const QString& NewDataLogIn, int LogState);
    void SendDataMotorPC(QString value, bool motor);
    void SendDataCamPC(QString value, bool pantilt);
    void SendDataCamTimer(QString value);
    void SendDataM5(QString txt);


public slots:
    void OnConnectionRequest();
    void OnDataReceived();
    void OnDisconnected();
    void OnSendData(QString txt);

};

#endif // CONNECTION_H
