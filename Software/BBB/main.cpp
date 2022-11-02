#include <QCoreApplication>


int main(int argc,char* argv[])
{
    QCoreApplication app;
    ComuTcpIpServer comm;



    LogManager log;
    Establecer conexiones signal/slot. Ejemplo:
    QObject::connect(&comm,SIGNAL(NewMovementCarro(QVector2D)),
    &carro,SLOT(OnMovementRequired(QVector2D)));
    QObject::connect(&carro,SIGNAL(PositionAvailable(QPointF)),
    &comm,SLOT(OnPositionAvailable(QPointF)));
    ...
    QString configFile=argv[1];
    carro.InitializeFromXmlFile(configFile);
    carro.IntializeFromXmlFile(configFile);
    comm.InitializeFromXmlFile(configFile);
    return app.exec();
}