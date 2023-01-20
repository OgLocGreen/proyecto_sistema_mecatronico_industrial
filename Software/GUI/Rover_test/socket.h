#ifndef SOCKET_H
#define SOCKET_H

#include <QObject>
#include <QDebug>
#include <QTcpSocket>
#include <QAbstractSocket>

#include "Utility.h"

class Socket : public QObject
{
    Q_OBJECT
 public:
     explicit Socket(QObject *parent = 0);
     void Test(QHostAddress address, quint16 port);

     void  sendmsg(QString text);

 signals:
     void newLogFile(QString logText);
     void newData(QString data);
     void BBBdisconnected();
     void BBBconnected();

 public slots:
     void OnConnected();
     void OnDisconnected();
     void OnBytesWritten(qint64 bytes);


private slots:
     void onDataReceived();

 private:
     QTcpSocket *socket;

     Utility util;
     bool connectedBool = false;

 };
 #endif // SOCKET_H
