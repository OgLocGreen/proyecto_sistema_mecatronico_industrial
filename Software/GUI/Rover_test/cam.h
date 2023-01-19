#ifndef CAM_H
#define CAM_H

#include <QTcpSocket>

class Cam
{
public:
    Cam();
private:
    QByteArray recv;
    QTcpSocket cli_html,cli_stream;
public:
    Cam(QWidget *parent = nullptr);
    ~Cam();
private:
    void TryConnectionWithServer();
    void SetCameraResolution(int res);  // Ver resoluciones disponibles en #defines de MainWindow.cpp
private slots:
    void OnDataReceived();
    void OnDisconnected();
    void OnError(QTcpSocket::SocketError err);

};

#endif // CAM_H
