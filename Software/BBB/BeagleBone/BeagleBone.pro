QT -= gui
QT += network
QT += core
QT += serialport
CONFIG += c++17 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0 ":/rsc/config.txt"

SOURCES += \
        BeagleBone.cpp \
        Connection.cpp \
        ControlAndMeasure.cpp \
        Data.cpp \
        Esp32.cpp \
        Fpga.cpp \
        Gui.cpp \
        Log.cpp \
        MotorDriver.cpp \
        Trajectory.cpp \
        Utility.cpp \
        main.cpp

linux-beagle* { ROOTFS = $$(HOME)/Common-Installs/BBB/RootFS INCLUDEPATH += $${ROOTFS}/usr/include/arm-linux-gnueabihf LIBS += -lrobotcontrol }

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    config.txt \
    xml_file_bak.txt

HEADERS += \
    BeagleBone.h \
    Connection.h \
    ControlAndMeasure.h \
    Data.h \
    Esp32.h \
    Fpga.h \
    Gui.h \
    Log.h \
    MotorDriver.h \
    Trajectory.h \
    Utility.h

RESOURCES += \
    resources.qrc
