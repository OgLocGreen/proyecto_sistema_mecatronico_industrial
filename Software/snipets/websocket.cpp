#include <QtCore>
#include <QtWebSockets>

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);

    // Create a websocket server
    QWebSocketServer server("My Server", QWebSocketServer::NonSecureMode);

    // Listen for incoming connections
    if (!server.listen(QHostAddress::Any, 1234)) {
        qFatal("Failed to open websocket server.");
        return 1;
    }

    // Print a message when a client connects
    QObject::connect(&server, &QWebSocketServer::newConnection,
        [&server]() {
            qDebug() << "Client connected:" << server.clients().last();
            auto client = server.clients().last();

            // Send a message to the client
            client->sendTextMessage("Hello from the server!");
        }
    );

    // Handle incoming messages
    QObject::connect(&server, &QWebSocketServer::textMessageReceived,
        [](const QString &message) {
            qDebug() << "Message received:" << message;
        }
    );

    return app.exec();
}
