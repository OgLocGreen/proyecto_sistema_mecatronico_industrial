#include <QCoreApplication>
#include <QTcpServer>
#include <QTcpSocket>
#include <QList>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    // Create a TCP server and listen for incoming connections on port 1234
    QTcpServer server;
    server.listen(QHostAddress::Any, 1234);

    // Store the client sockets in a list
    QList<QTcpSocket*> clientSockets;

    // Connect to the newConnection() signal, which is emitted when a new client connects
    QObject::connect(&server, &QTcpServer::newConnection, [&]() {
        // Accept the incoming connection
        QTcpSocket *clientSocket = server.nextPendingConnection();

        // Add the client socket to the list
        clientSockets.append(clientSocket);

        // Read data from the client socket
        QObject::connect(clientSocket, &QTcpSocket::readyRead, [clientSocket]() {
            QByteArray data = clientSocket->readAll();
            // Process the data received from the client
            // ...

            // Write data back to the client
            clientSocket->write("Response from server\n");
        });
    });

    // Broadcast data to all connected clients
    const QByteArray message = "Broadcast message from server\n";
    for (QTcpSocket *clientSocket : clientSockets) {
        clientSocket->write(message);
    }

    return a.exec();
}
