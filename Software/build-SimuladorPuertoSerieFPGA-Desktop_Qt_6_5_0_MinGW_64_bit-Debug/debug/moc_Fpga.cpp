/****************************************************************************
** Meta object code from reading C++ file 'Fpga.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../SimuladorPuertoSerieFPGA/Fpga.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'Fpga.h' doesn't include <QObject>."
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
struct qt_meta_stringdata_CLASSFpgaENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSFpgaENDCLASS = QtMocHelpers::stringData(
    "Fpga",
    "OnDataRecievedFromBBB",
    "",
    "direction_elev",
    "enable_elev",
    "enable_cam",
    "direction_cam",
    "cam_value",
    "enable_fast",
    "OnFPGAReadyRead",
    "OnTimerServo"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSFpgaENDCLASS_t {
    uint offsetsAndSizes[22];
    char stringdata0[5];
    char stringdata1[22];
    char stringdata2[1];
    char stringdata3[15];
    char stringdata4[12];
    char stringdata5[11];
    char stringdata6[14];
    char stringdata7[10];
    char stringdata8[12];
    char stringdata9[16];
    char stringdata10[13];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSFpgaENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSFpgaENDCLASS_t qt_meta_stringdata_CLASSFpgaENDCLASS = {
    {
        QT_MOC_LITERAL(0, 4),  // "Fpga"
        QT_MOC_LITERAL(5, 21),  // "OnDataRecievedFromBBB"
        QT_MOC_LITERAL(27, 0),  // ""
        QT_MOC_LITERAL(28, 14),  // "direction_elev"
        QT_MOC_LITERAL(43, 11),  // "enable_elev"
        QT_MOC_LITERAL(55, 10),  // "enable_cam"
        QT_MOC_LITERAL(66, 13),  // "direction_cam"
        QT_MOC_LITERAL(80, 9),  // "cam_value"
        QT_MOC_LITERAL(90, 11),  // "enable_fast"
        QT_MOC_LITERAL(102, 15),  // "OnFPGAReadyRead"
        QT_MOC_LITERAL(118, 12)   // "OnTimerServo"
    },
    "Fpga",
    "OnDataRecievedFromBBB",
    "",
    "direction_elev",
    "enable_elev",
    "enable_cam",
    "direction_cam",
    "cam_value",
    "enable_fast",
    "OnFPGAReadyRead",
    "OnTimerServo"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSFpgaENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       1,    6,   32,    2, 0x0a,    1 /* Public */,
       9,    0,   45,    2, 0x08,    8 /* Private */,
      10,    0,   46,    2, 0x08,    9 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString,    3,    4,    5,    6,    7,    8,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

Q_CONSTINIT const QMetaObject Fpga::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSFpgaENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSFpgaENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSFpgaENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Fpga, std::true_type>,
        // method 'OnDataRecievedFromBBB'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'OnFPGAReadyRead'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnTimerServo'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void Fpga::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Fpga *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->OnDataRecievedFromBBB((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[5])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[6]))); break;
        case 1: _t->OnFPGAReadyRead(); break;
        case 2: _t->OnTimerServo(); break;
        default: ;
        }
    }
}

const QMetaObject *Fpga::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Fpga::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSFpgaENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Fpga::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
