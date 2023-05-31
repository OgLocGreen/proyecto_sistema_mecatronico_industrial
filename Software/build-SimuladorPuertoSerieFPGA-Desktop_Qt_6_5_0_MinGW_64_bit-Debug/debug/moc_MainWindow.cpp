/****************************************************************************
** Meta object code from reading C++ file 'MainWindow.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../SimuladorPuertoSerieFPGA/MainWindow.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MainWindow.h' doesn't include <QObject>."
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
    "SendDataToFPGA",
    "",
    "dir_scissor",
    "enable_scissor",
    "enable_servo",
    "dir_servo",
    "cam_value",
    "enable_fast",
    "SendDataToMotorDriver",
    "right_motor_speed_prcnt",
    "left_motor_speed_prcnt",
    "on_qParaMD_pushButton_clicked",
    "on_qIzda_pushButton_clicked",
    "checked",
    "on_qIzda_pushButton_pressed",
    "on_qDcha_pushButton_2_pressed",
    "on_qAvantiVConst_pushButton_3_pressed",
    "on_qAtras_pushButton_4_pressed",
    "on_qIzda_pushButton_released",
    "on_qDcha_pushButton_2_released",
    "on_qAvantiVConst_pushButton_3_released",
    "on_qAtras_pushButton_4_released",
    "on_qSUBETIJERA_pushButton_pressed",
    "on_qSUBETIJERA_pushButton_released",
    "on_qBAJATIJERA_pushbutton_pressed",
    "on_qBAJATIJERA_pushbutton_released",
    "on_qSUBESERVO_pushbutton_pressed",
    "on_qBAJASERVO_pushButton_4_pressed"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSMainWindowENDCLASS_t {
    uint offsetsAndSizes[58];
    char stringdata0[11];
    char stringdata1[15];
    char stringdata2[1];
    char stringdata3[12];
    char stringdata4[15];
    char stringdata5[13];
    char stringdata6[10];
    char stringdata7[10];
    char stringdata8[12];
    char stringdata9[22];
    char stringdata10[24];
    char stringdata11[23];
    char stringdata12[30];
    char stringdata13[28];
    char stringdata14[8];
    char stringdata15[28];
    char stringdata16[30];
    char stringdata17[38];
    char stringdata18[31];
    char stringdata19[29];
    char stringdata20[31];
    char stringdata21[39];
    char stringdata22[32];
    char stringdata23[34];
    char stringdata24[35];
    char stringdata25[34];
    char stringdata26[35];
    char stringdata27[33];
    char stringdata28[35];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSMainWindowENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSMainWindowENDCLASS_t qt_meta_stringdata_CLASSMainWindowENDCLASS = {
    {
        QT_MOC_LITERAL(0, 10),  // "MainWindow"
        QT_MOC_LITERAL(11, 14),  // "SendDataToFPGA"
        QT_MOC_LITERAL(26, 0),  // ""
        QT_MOC_LITERAL(27, 11),  // "dir_scissor"
        QT_MOC_LITERAL(39, 14),  // "enable_scissor"
        QT_MOC_LITERAL(54, 12),  // "enable_servo"
        QT_MOC_LITERAL(67, 9),  // "dir_servo"
        QT_MOC_LITERAL(77, 9),  // "cam_value"
        QT_MOC_LITERAL(87, 11),  // "enable_fast"
        QT_MOC_LITERAL(99, 21),  // "SendDataToMotorDriver"
        QT_MOC_LITERAL(121, 23),  // "right_motor_speed_prcnt"
        QT_MOC_LITERAL(145, 22),  // "left_motor_speed_prcnt"
        QT_MOC_LITERAL(168, 29),  // "on_qParaMD_pushButton_clicked"
        QT_MOC_LITERAL(198, 27),  // "on_qIzda_pushButton_clicked"
        QT_MOC_LITERAL(226, 7),  // "checked"
        QT_MOC_LITERAL(234, 27),  // "on_qIzda_pushButton_pressed"
        QT_MOC_LITERAL(262, 29),  // "on_qDcha_pushButton_2_pressed"
        QT_MOC_LITERAL(292, 37),  // "on_qAvantiVConst_pushButton_3..."
        QT_MOC_LITERAL(330, 30),  // "on_qAtras_pushButton_4_pressed"
        QT_MOC_LITERAL(361, 28),  // "on_qIzda_pushButton_released"
        QT_MOC_LITERAL(390, 30),  // "on_qDcha_pushButton_2_released"
        QT_MOC_LITERAL(421, 38),  // "on_qAvantiVConst_pushButton_3..."
        QT_MOC_LITERAL(460, 31),  // "on_qAtras_pushButton_4_released"
        QT_MOC_LITERAL(492, 33),  // "on_qSUBETIJERA_pushButton_pre..."
        QT_MOC_LITERAL(526, 34),  // "on_qSUBETIJERA_pushButton_rel..."
        QT_MOC_LITERAL(561, 33),  // "on_qBAJATIJERA_pushbutton_pre..."
        QT_MOC_LITERAL(595, 34),  // "on_qBAJATIJERA_pushbutton_rel..."
        QT_MOC_LITERAL(630, 32),  // "on_qSUBESERVO_pushbutton_pressed"
        QT_MOC_LITERAL(663, 34)   // "on_qBAJASERVO_pushButton_4_pr..."
    },
    "MainWindow",
    "SendDataToFPGA",
    "",
    "dir_scissor",
    "enable_scissor",
    "enable_servo",
    "dir_servo",
    "cam_value",
    "enable_fast",
    "SendDataToMotorDriver",
    "right_motor_speed_prcnt",
    "left_motor_speed_prcnt",
    "on_qParaMD_pushButton_clicked",
    "on_qIzda_pushButton_clicked",
    "checked",
    "on_qIzda_pushButton_pressed",
    "on_qDcha_pushButton_2_pressed",
    "on_qAvantiVConst_pushButton_3_pressed",
    "on_qAtras_pushButton_4_pressed",
    "on_qIzda_pushButton_released",
    "on_qDcha_pushButton_2_released",
    "on_qAvantiVConst_pushButton_3_released",
    "on_qAtras_pushButton_4_released",
    "on_qSUBETIJERA_pushButton_pressed",
    "on_qSUBETIJERA_pushButton_released",
    "on_qBAJATIJERA_pushbutton_pressed",
    "on_qBAJATIJERA_pushbutton_released",
    "on_qSUBESERVO_pushbutton_pressed",
    "on_qBAJASERVO_pushButton_4_pressed"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSMainWindowENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
      18,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    6,  122,    2, 0x06,    1 /* Public */,
       9,    2,  135,    2, 0x06,    8 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      12,    0,  140,    2, 0x08,   11 /* Private */,
      13,    1,  141,    2, 0x08,   12 /* Private */,
      15,    0,  144,    2, 0x08,   14 /* Private */,
      16,    0,  145,    2, 0x08,   15 /* Private */,
      17,    0,  146,    2, 0x08,   16 /* Private */,
      18,    0,  147,    2, 0x08,   17 /* Private */,
      19,    0,  148,    2, 0x08,   18 /* Private */,
      20,    0,  149,    2, 0x08,   19 /* Private */,
      21,    0,  150,    2, 0x08,   20 /* Private */,
      22,    0,  151,    2, 0x08,   21 /* Private */,
      23,    0,  152,    2, 0x08,   22 /* Private */,
      24,    0,  153,    2, 0x08,   23 /* Private */,
      25,    0,  154,    2, 0x08,   24 /* Private */,
      26,    0,  155,    2, 0x08,   25 /* Private */,
      27,    0,  156,    2, 0x08,   26 /* Private */,
      28,    0,  157,    2, 0x08,   27 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString,    3,    4,    5,    6,    7,    8,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   10,   11,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   14,
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
        // method 'SendDataToFPGA'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'SendDataToMotorDriver'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'on_qParaMD_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qIzda_pushButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'on_qIzda_pushButton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qDcha_pushButton_2_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qAvantiVConst_pushButton_3_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qAtras_pushButton_4_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qIzda_pushButton_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qDcha_pushButton_2_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qAvantiVConst_pushButton_3_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qAtras_pushButton_4_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qSUBETIJERA_pushButton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qSUBETIJERA_pushButton_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qBAJATIJERA_pushbutton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qBAJATIJERA_pushbutton_released'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qSUBESERVO_pushbutton_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_qBAJASERVO_pushButton_4_pressed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MainWindow *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->SendDataToFPGA((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[5])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[6]))); break;
        case 1: _t->SendDataToMotorDriver((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2]))); break;
        case 2: _t->on_qParaMD_pushButton_clicked(); break;
        case 3: _t->on_qIzda_pushButton_clicked((*reinterpret_cast< std::add_pointer_t<bool>>(_a[1]))); break;
        case 4: _t->on_qIzda_pushButton_pressed(); break;
        case 5: _t->on_qDcha_pushButton_2_pressed(); break;
        case 6: _t->on_qAvantiVConst_pushButton_3_pressed(); break;
        case 7: _t->on_qAtras_pushButton_4_pressed(); break;
        case 8: _t->on_qIzda_pushButton_released(); break;
        case 9: _t->on_qDcha_pushButton_2_released(); break;
        case 10: _t->on_qAvantiVConst_pushButton_3_released(); break;
        case 11: _t->on_qAtras_pushButton_4_released(); break;
        case 12: _t->on_qSUBETIJERA_pushButton_pressed(); break;
        case 13: _t->on_qSUBETIJERA_pushButton_released(); break;
        case 14: _t->on_qBAJATIJERA_pushbutton_pressed(); break;
        case 15: _t->on_qBAJATIJERA_pushbutton_released(); break;
        case 16: _t->on_qSUBESERVO_pushbutton_pressed(); break;
        case 17: _t->on_qBAJASERVO_pushButton_4_pressed(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (MainWindow::*)(QString , QString , QString , QString , QString , QString );
            if (_t _q_method = &MainWindow::SendDataToFPGA; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (MainWindow::*)(QString , QString );
            if (_t _q_method = &MainWindow::SendDataToMotorDriver; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
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
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 18)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 18;
    }
    return _id;
}

// SIGNAL 0
void MainWindow::SendDataToFPGA(QString _t1, QString _t2, QString _t3, QString _t4, QString _t5, QString _t6)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t2))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t3))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t4))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t5))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t6))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void MainWindow::SendDataToMotorDriver(QString _t1, QString _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t2))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
