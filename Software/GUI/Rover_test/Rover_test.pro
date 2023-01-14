QT       += core gui
QT +=  network
QT += multimedia
#QT +=  webenginecore
#QT +=  webenginewidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Utility.cpp \
    camwindow.cpp \
    main.cpp \
    mainwindow.cpp \
    options.cpp \
    socket.cpp \
    trajwidget.cpp

HEADERS += \
    Utility.h \
    camwindow.h \
    mainwindow.h \
    options.h \
    socket.h \
    trajwidget.h

FORMS += \
    camwindow.ui \
    mainwindow.ui \
    options.ui \
    trajwidget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    StyleSheet.qrc \
    images.qrc

DISTFILES +=
