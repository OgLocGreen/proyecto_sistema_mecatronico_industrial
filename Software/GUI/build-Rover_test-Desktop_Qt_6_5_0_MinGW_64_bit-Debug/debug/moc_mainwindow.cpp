/****************************************************************************
** Meta object code from reading C++ file 'mainwindow.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../Rover_test/mainwindow.h"
#include <QtGui/qtextcursor.h>
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.5.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSMainWindowENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSMainWindowENDCLASS = QtMocHelpers::stringData(
    "MainWindow",
    "sendTrajectoryPos",
    "",
    "onTimerPulse",
    "onTimerBack",
    "onTimerElev",
    "onTimerElevBack",
    "onTimerJoystick",
    "onTimerConnErr",
    "onNewLogFile",
    "logText",
    "onUpdateJoystick",
    "pos",
    "onSendTrajectoryPos",
    "OnESPDataReceived",
    "OnESPDisconnected",
    "OnESPError",
    "QTcpSocket::SocketError",
    "err",
    "onBBBdisconnected",
    "onBBBconnected",
    "on_qCam1_RadioButton_toggled",
    "checked",
    "on_qCam2_radioButton_toggled",
    "on_qElev_verticalSlider_valueChanged",
    "value",
    "on_qElev_spinBox_valueChanged",
    "arg1",
    "on_qElev_spinBox_editingFinished",
    "on_qPuls_pushButton_pressed",
    "on_qPuls_pushButton_released",
    "on_qESP1_pushButton_clicked",
    "on_qESP2_pushButton_clicked",
    "on_qTraj_pushButton_clicked",
    "on_qLog_pushButton_clicked",
    "on_qStatus_action_triggered",
    "on_qVel_spinBox_valueChanged",
    "on_qElevUp_pushButton_2_pressed",
    "on_qElevUp_pushButton_2_released",
    "on_qElevDown_pushButton_2_pressed",
    "on_qElevDown_pushButton_2_released",
    "on_qCam1Up_pushButton_pressed",
    "on_qCam1Down_pushButton_pressed",
    "on_qCam1Down_pushButton_released",
    "on_qCam1Up_pushButton_released",
    "on_qLED_pushButton_clicked",
    "on_qAlarm_pushButton_clicked",
    "on_qConnections_action_triggered",
    "on_qTimer_action_triggered",
    "on_qConnect_pushButton_2_clicked",
    "on_qDisconnect_pushButton_clicked",
    "on_qRoom_checkBox_stateChanged"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSMainWindowENDCLASS_t {
    uint offsetsAndSizes[104];
    char stringdata0[11];
    char stringdata1[18];
    char stringdata2[1];
    char stringdata3[13];
    char stringdata4[12];
    char stringdata5[12];
    char stringdata6[16];
    char stringdata7[16];
    char stringdata8[15];
    char stringdata9[13];
    char stringdata10[8];
    char stringdata11[17];
    char stringdata12[4];
    char stringdata13[20];
    char stringdata14[18];
    char stringdata15[18];
    char stringdata16[11];
    char stringdata17[24];
    char stringdata18[4];
    char stringdata19[18];
    char stringdata20[15];
    char stringdata21[29];
    char stringdata22[8];
    char stringdata23[29];
    char stringdata24[37];
    char stringdata25[6];
    char stringdata26[30];
    char stringdata27[5];
    char stringdata28[33];
    char stringdata29[28];
    char stringdata30[29];
    char stringdata31[28];
    char stringdata32[28];
    char stringdata33[28];
    char stringdata34[27];
    char stringdata35[28];
    char stringdata36[29];
    char stringdata37[32];
    char stringdata38[33];
    char stringdata39[34];
    char stringdata40[35];
    char stringdata41[30];
    char stringdata42[32];
    char stringdata43[33];
    char stringdata44[31];
    char stringdata45[27];
    char stringdata46[29];
    char stringdata47[33];
    char stringdata48[27];
    char stringdata49[33];
    char stringdata50[34];
    char stringdata51[31];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSMainWindowENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSMainWindowENDCLASS_t qt_meta_stringdata_CLASSMainWindowENDCLASS = {
    {
        QT_MOC_LITERAL(0, 10),  // "MainWindow"
        QT_MOC_LITERAL(11, 17),  // "sendTrajectoryPos"
        QT_MOC_LITERAL(29, 0),  // ""
        QT_MOC_LITERAL(30, 12),  // "onTimerPulse"
        QT_MOC_LITERAL(43, 11),  // "onTimerBack"
        QT_MOC_LITERAL(55, 11),  // "onTimerElev"
        QT_MOC_LITERAL(67, 15),  // "onTimerElevBack"
        QT_MOC_LITERAL(83, 15),  // "onTimerJoystick"
        QT_MOC_LITERAL(99, 14),  // "onTimerConnErr"
        QT_MOC_LITERAL(114, 12),  // "onNewLogFile"
        QT_MOC_LITERAL(127, 7),  // "logText"
        QT_MOC_LITERAL(135, 16),  // "onUpdateJoystick"
        QT_MOC_LITERAL(152, 3),  // "pos"
        QT_MOC_LITERAL(156, 19),  // "onSendTrajectoryPos"
        QT_MOC_LITERAL(176, 17),  // "OnESPDataReceived"
        QT_MOC_LITERAL(194, 17),  // "OnESPDisconnected"
        QT_MOC_LITERAL(212, 10),  // "OnESPError"
        QT_MOC_LITERAL(223, 23),  // "QTcpSocket::SocketError"
        QT_MOC_LITERAL(247, 3),  // "err"
        QT_MOC_LITERAL(251, 17),  // "onBBBdisconnected"
        QT_MOC_LITERAL(269, 14),  // "onBBBconnected"
        QT_MOC_LITERAL(284, 28),  // "on_qCam1_RadioButton_toggled"
        QT_MOC_LITERAL(313, 7),  // "checked"
        QT_MOC_LITERAL(321, 28),  // "on_qCam2_radioButton_toggled"
        QT_MOC_LITERAL(350, 36),  // "on_qElev_verticalSlider_value..."
        QT_MOC_LITERAL(387, 5),  // "value"
        QT_MOC_LITERAL(393, 29),  // "on_qElev_spinBox_valueChanged"
        QT_MOC_LITERAL(423, 4),  // "arg1"
        QT_MOC_LITERAL(428, 32),  // "on_qElev_spinBox_editingFinished"
        QT_MOC_LITERAL(461, 27),  // "on_qPuls_pushButton_pressed"
        QT_MOC_LITERAL(489, 28),  // "on_qPuls_pushButton_released"
        QT_MOC_LITERAL(518, 27),  // "on_qESP1_pushButton_clicked"
        QT_MOC_LITERAL(546, 27),  // "on_qESP2_pushButton_clicked"
        QT_MOC_LITERAL(574, 27),  // "on_qTraj_pushButton_clicked"
        QT_MOC_LITERAL(602, 26),  // "on_qLog_pushButton_clicked"
        QT_MOC_LITERAL(629, 27),  // "on_qStatus_action_triggered"
        QT_MOC_LITERAL(657, 28),  // "on_qVel_spinBox_valueChanged"
        QT_MOC_LITERAL(686, 31),  // "on_qElevUp_pushButton_2_pressed"
        QT_MOC_LITERAL(718, 32),  // "on_qElevUp_pushButton_2_released"
        QT_MOC_LITERAL(751, 33),  // "on_qElevDown_pushButton_2_pre..."
        QT_MOC_LITERAL(785, 34),  // "on_qElevDown_pushButton_2_rel..."
        QT_MOC_LITERAL(820, 29),  // "on_qCam1Up_pushButton_pressed"
        QT_MOC_LITERAL(850, 31),  // "on_qCam1Down_pushButton_pressed"
        QT_MOC_LITERAL(882, 32),  // "on_qCam1Down_pushButton_released"
        QT_MOC_LITERAL(915, 30),  // "on_qCam1Up_pushButton_released"
        QT_MOC_LITERAL(946, 26),  // "on_qLED_pushButton_clicked"
        QT_MOC_LITERAL(973, 28),  // "on_qAlarm_pushButton_clicked"
        QT_MOC_LITERAL(1002, 32),  // "on_qConnections_action_triggered"
        QT_MOC_LITERAL(1035, 26),  // "on_qTimer_action_triggered"
        QT_MOC_LITERAL(1062, 32),  // "on_qConnect_pushButton_2_clicked"
        QT_MOC_LITERAL(1095, 33),  // "on_qDisconnect_pushButton_cli..."
        QT_MOC_LITERAL(1129, 30)   // "on_qRoom_checkBox_stateChanged"
    },
    "MainWindow",
    "sendTrajectoryPos",
    "",
    "onTimerPulse",
    "onTimerBack",
    "onTimerElev",
    "onTimerElevBack",
    "onTimerJoystick",
    "onTimerConnErr",
    "onNewLogFile",
    "logText",
    "onUpdateJoystick",
    "pos",
    "onSendTrajectoryPos",
    "OnESPDataReceived",
    "OnESPDisconnected",
    "OnESPError",
    "QTcpSocket::SocketError",
    "err",
    "onBBBdisconnected",
    "onBBBconnected",
    "on_qCam1_RadioButton_toggled",
    "checked",
    "on_qCam2_radioButton_toggled",
    "on_qElev_verticalSlider_valueChanged",
    "value",
    "on_qElev_spinBox_valueChanged",
    "arg1",
    "on_qElev_spinBox_editingFinished",
    "on_qPuls_pushButton_pressed",
    "on_qPuls_pushButton_released",
    "on_qESP1_pushButton_clicked",
    "on_qESP2_pushButton_clicked",
    "on_qTraj_pushButton_clicked",
    "on_qLog_pushButton_clicked",
    "on_qStatus_action_triggered",
    "on_qVel_spinBox_valueChanged",
    "on_qElevUp_pushButton_2_pressed",
    "on_qElevUp_pushButton_2_released",
    "on_qElevDown_pushButton_2_pressed",
    "on_qElevDown_pushButton_2_released",
    "on_qCam1Up_pushButton_pressed",
    "on_qCam1Down_pushButton_pressed",
    "on_qCam1Down_pushButton_released",
    "on_qCam1Up_pushButton_released",
    "on_qLED_pushButton_clicked",
    "on_qAlarm_pushButton_clicked",
    "on_qConnections_action_triggered",
    "on_qTimer_action_triggered",
    "on_qConnect_pushButton_2_clicked",
    "on_qDisconnect_pushButton_clicked",
    "on_qRoom_checkBox_stateChanged"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSMainWindowENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
      43,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,  272,    2, 0x06,    1 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,  273,    2, 0x08,    2 /* Private */,
       4,    0,  274,    2, 0x08,    3 /* Private */,
       5,    0,  275,    2, 0x08,    4 /* Private */,
       6,    0,  276,    2, 0x08,    5 /* Private */,
       7,    0,  277,    2, 0x08,    6 /* Private */,
       8,    0,  278,    2, 0x08,    7 /* Private */,
       9,    1,  279,    2, 0x08,    8 /* Private */,
      11,    1,  282,    2, 0x08,   10 /* Private */,
      13,    0,  285,    2, 0x08,   12 /* Private */,
      14,    0,  286,    2, 0x08,   13 /* Private */,
      15,    0,  287,    2, 0x08,   14 /* Private */,
      16,    1,  288,    2, 0x08,   15 /* Private */,
      19,    0,  291,    2, 0x08,   17 /* Private */,
      20,    0,  292,    2, 0x08,   18 /* Private */,
      21,    1,  293,    2, 0x08,   19 /* Private */,
      23,    1,  296,    2, 0x08,   21 /* Private */,
      24,    1,  299,    2, 0x08,   23 /* Private */,
      26,    1,  302,    2, 0x08,   25 /* Private */,
      28,    0,  305,    2, 0x08,   27 /* Private */,
      29,    0,  306,    2, 0x08,   28 /* Private */,
      30,    0,  307,    2, 0x08,   29 /* Private */,
      31,    0,  308,    2, 0x08,   30 /* Private */,
      32,    0,  309,    2, 0x08,   31 /* Private */,
      33,    0,  310,    2, 0x08,   32 /* Private */,
      34,    0,  311,    2, 0x08,   33 /* Private */,
      35,    0,  312,    2, 0x08,   34 /* Private */,
      36,    1,  313,    2, 0x08,   35 /* Private */,
      37,    0,  316,    2, 0x08,   37 /* Private */,
      38,    0,  317,    2, 0x08,   38 /* Private */,
      39,    0,  318,    2, 0x08,   39 /* Private */,
      40,    0,  319,    2, 0x08,   40 /* Private */,
      41,    0,  320,    2, 0x08,   41 /* Private */,
      42,    0,  321,    2, 0x08,   42 /* Private */,
      43,    0,  322,    2, 0x08,   43 /* Private */,
      44,    0,  323,    2, 0x08,   44 /* Private */,
      45,    0,  324,    2, 0x08,   45 /* Private */,
      46,    0,  325,    2, 0x08,   46 /* Private */,
      47,    0,  326,    2, 0x08,   47 /* Private */,
      48,    0,  327,    2, 0x08,   48 /* Private */,
      49,    0,  328,    2, 0x08,   49 /* Private */,
      50,    0,  329,    2, 0x08,   50 /* Private */,
      51,    1,  330,    2, 0x08,   51 /* Private */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::Void, QMetaType::QPointF,   12,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 17,   18,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   22,
    QMetaType::Void, QMetaType::Bool,   22,
    QMetaType::Void, QMetaType::Int,   25,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   27,

       0        // eod
};

Q_CONSTINIT const QMetaObject MainWindow::staticMetaObject = { {
    QMetaObject::SuperData::link<QMainWindow::staticMetaObject>(),
    qt_meta_stringdata_CLASSMainWindowENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSMainWindowENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSMainWindowENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<MainWindow, std::true_type>,
        // method 'sendTrajectoryPos'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onTimerPulse'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onTimerBack'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onTimerElev'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onTimerElevBack'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onTimerJoystick'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onTimerConnErr'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onNewLogFile'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'onUpdateJoystick'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QPointF, std::false_type>,
        // method 'onSendTrajectoryPos'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnESPDataReceived'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnESPDisconnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnESPError'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QTcpSocket::SocketError, std::false_type>,
        // method 'onBBBdisconnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onBBBconnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qCam1_RadioButton_toggled'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'on_qCam2_radioButton_toggled'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'on_qElev_verticalSlider_valueChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'on_qElev_spinBox_valueChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'on_qElev_spinBox_editingFinished'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qPuls_pushButton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qPuls_pushButton_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qESP1_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qESP2_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qTraj_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qLog_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qStatus_action_triggered'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qVel_spinBox_valueChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'on_qElevUp_pushButton_2_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qElevUp_pushButton_2_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qElevDown_pushButton_2_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qElevDown_pushButton_2_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qCam1Up_pushButton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qCam1Down_pushButton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qCam1Down_pushButton_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qCam1Up_pushButton_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qLED_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qAlarm_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qConnections_action_triggered'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qTimer_action_triggered'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qConnect_pushButton_2_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qDisconnect_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qRoom_checkBox_stateChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>
    >,
    nullptr
} };

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MainWindow *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->sendTrajectoryPos(); break;
        case 1: _t->onTimerPulse(); break;
        case 2: _t->onTimerBack(); break;
        case 3: _t->onTimerElev(); break;
        case 4: _t->onTimerElevBack(); break;
        case 5: _t->onTimerJoystick(); break;
        case 6: _t->onTimerConnErr(); break;
        case 7: _t->onNewLogFile((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 8: _t->onUpdateJoystick((*reinterpret_cast< std::add_pointer_t<QPointF>>(_a[1]))); break;
        case 9: _t->onSendTrajectoryPos(); break;
        case 10: _t->OnESPDataReceived(); break;
        case 11: _t->OnESPDisconnected(); break;
        case 12: _t->OnESPError((*reinterpret_cast< std::add_pointer_t<QTcpSocket::SocketError>>(_a[1]))); break;
        case 13: _t->onBBBdisconnected(); break;
        case 14: _t->onBBBconnected(); break;
        case 15: _t->on_qCam1_RadioButton_toggled((*reinterpret_cast< std::add_pointer_t<bool>>(_a[1]))); break;
        case 16: _t->on_qCam2_radioButton_toggled((*reinterpret_cast< std::add_pointer_t<bool>>(_a[1]))); break;
        case 17: _t->on_qElev_verticalSlider_valueChanged((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 18: _t->on_qElev_spinBox_valueChanged((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 19: _t->on_qElev_spinBox_editingFinished(); break;
        case 20: _t->on_qPuls_pushButton_pressed(); break;
        case 21: _t->on_qPuls_pushButton_released(); break;
        case 22: _t->on_qESP1_pushButton_clicked(); break;
        case 23: _t->on_qESP2_pushButton_clicked(); break;
        case 24: _t->on_qTraj_pushButton_clicked(); break;
        case 25: _t->on_qLog_pushButton_clicked(); break;
        case 26: _t->on_qStatus_action_triggered(); break;
        case 27: _t->on_qVel_spinBox_valueChanged((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 28: _t->on_qElevUp_pushButton_2_pressed(); break;
        case 29: _t->on_qElevUp_pushButton_2_released(); break;
        case 30: _t->on_qElevDown_pushButton_2_pressed(); break;
        case 31: _t->on_qElevDown_pushButton_2_released(); break;
        case 32: _t->on_qCam1Up_pushButton_pressed(); break;
        case 33: _t->on_qCam1Down_pushButton_pressed(); break;
        case 34: _t->on_qCam1Down_pushButton_released(); break;
        case 35: _t->on_qCam1Up_pushButton_released(); break;
        case 36: _t->on_qLED_pushButton_clicked(); break;
        case 37: _t->on_qAlarm_pushButton_clicked(); break;
        case 38: _t->on_qConnections_action_triggered(); break;
        case 39: _t->on_qTimer_action_triggered(); break;
        case 40: _t->on_qConnect_pushButton_2_clicked(); break;
        case 41: _t->on_qDisconnect_pushButton_clicked(); break;
        case 42: _t->on_qRoom_checkBox_stateChanged((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (MainWindow::*)();
            if (_t _q_method = &MainWindow::sendTrajectoryPos; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSMainWindowENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 43)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 43;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 43)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 43;
    }
    return _id;
}

// SIGNAL 0
void MainWindow::sendTrajectoryPos()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
