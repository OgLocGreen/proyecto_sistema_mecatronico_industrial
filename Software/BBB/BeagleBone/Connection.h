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
    Data& myData;
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
    // Constructor
    Connection(Data& myDataadrs);
signals:
    // read new data
    void NewData(QString data);
    // Send data to Trajectory Class
    void SendDataTrajectory(QString x, QString y);
    // send data to the Motor Class
    void SendDataMotor(QString dataName,QString value);
    // send data to the Fpga Class
    void SendDataFpga(QString direction_elev,QString enable_elev, QString enable_cam,QString direction_cam,QString enable_fast);     // issue #19
    // add msg to the Log
    void AddToLog(QString txt);

public slots:
    // slot if a client wants to connect to the master
    void OnConnectionRequest();
    // slot when data is Recieved
    void OnDataReceived();
    // slot when a client disconnected
    void OnDisconnected();
    // slot for sending data to all clients
    void OnSendData(QString txt);



};

#endif // CONNECTION_H
