#include "mainwindow.h"

#include <QApplication>

#include <QFile>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    //set new style sheet
    QFile styleSheetFile;
    //styleSheetFile.setFileName("Incrypt.qss");    //not good
    //styleSheetFile.setFileName("Adaptic.qss");    //nice slider
    styleSheetFile.setFileName(":/StyleSheet/Combinear.qss");    //nice
    //styleSheetFile.setFileName("Genetive.qss");   //not really good
    //styleSheetFile.setFileName("Chatbee.qss");    // good

    if(styleSheetFile.open(QFile::ReadOnly))
    {
    QString styleSheet = QLatin1String(styleSheetFile.readAll());
    a.setStyleSheet(styleSheet);
    }
    else
        qDebug() << "no style sheet";


    MainWindow w;
    w.show();
    return a.exec();
}
