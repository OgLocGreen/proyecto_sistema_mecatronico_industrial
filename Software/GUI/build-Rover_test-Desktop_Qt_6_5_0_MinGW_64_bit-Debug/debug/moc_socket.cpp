/****************************************************************************
** Meta object code from reading C++ file 'socket.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../Rover_test/socket.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'socket.h' doesn't include <QObject>."
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
struct qt_meta_stringdata_CLASSSocketENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSSocketENDCLASS = QtMocHelpers::stringData(
    "Socket",
    "newLogFile",
    "",
    "logText",
    "newData",
    "data",
    "BBBdisconnected",
    "BBBconnected",
    "OnConnected",
    "OnDisconnected",
    "OnBytesWritten",
    "bytes",
    "onDataReceived"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSSocketENDCLASS_t {
    uint offsetsAndSizes[26];
    char stringdata0[7];
    char stringdata1[11];
    char stringdata2[1];
    char stringdata3[8];
    char stringdata4[8];
    char stringdata5[5];
    char stringdata6[16];
    char stringdata7[13];
    char stringdata8[12];
    char stringdata9[15];
    char stringdata10[15];
    char stringdata11[6];
    char stringdata12[15];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSSocketENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSSocketENDCLASS_t qt_meta_stringdata_CLASSSocketENDCLASS = {
    {
        QT_MOC_LITERAL(0, 6),  // "Socket"
        QT_MOC_LITERAL(7, 10),  // "newLogFile"
        QT_MOC_LITERAL(18, 0),  // ""
        QT_MOC_LITERAL(19, 7),  // "logText"
        QT_MOC_LITERAL(27, 7),  // "newData"
        QT_MOC_LITERAL(35, 4),  // "data"
        QT_MOC_LITERAL(40, 15),  // "BBBdisconnected"
        QT_MOC_LITERAL(56, 12),  // "BBBconnected"
        QT_MOC_LITERAL(69, 11),  // "OnConnected"
        QT_MOC_LITERAL(81, 14),  // "OnDisconnected"
        QT_MOC_LITERAL(96, 14),  // "OnBytesWritten"
        QT_MOC_LITERAL(111, 5),  // "bytes"
        QT_MOC_LITERAL(117, 14)   // "onDataReceived"
    },
    "Socket",
    "newLogFile",
    "",
    "logText",
    "newData",
    "data",
    "BBBdisconnected",
    "BBBconnected",
    "OnConnected",
    "OnDisconnected",
    "OnBytesWritten",
    "bytes",
    "onDataReceived"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSSocketENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,   62,    2, 0x06,    1 /* Public */,
       4,    1,   65,    2, 0x06,    3 /* Public */,
       6,    0,   68,    2, 0x06,    5 /* Public */,
       7,    0,   69,    2, 0x06,    6 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       8,    0,   70,    2, 0x0a,    7 /* Public */,
       9,    0,   71,    2, 0x0a,    8 /* Public */,
      10,    1,   72,    2, 0x0a,    9 /* Public */,
      12,    0,   75,    2, 0x08,   11 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    5,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::LongLong,   11,
    QMetaType::Void,

       0        // eod
};

Q_CONSTINIT const QMetaObject Socket::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSSocketENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSSocketENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSSocketENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Socket, std::true_type>,
        // method 'newLogFile'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'newData'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'BBBdisconnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'BBBconnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnConnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnDisconnected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'OnBytesWritten'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<qint64, std::false_type>,
        // method 'onDataReceived'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void Socket::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Socket *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->newLogFile((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 1: _t->newData((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 2: _t->BBBdisconnected(); break;
        case 3: _t->BBBconnected(); break;
        case 4: _t->OnConnected(); break;
        case 5: _t->OnDisconnected(); break;
        case 6: _t->OnBytesWritten((*reinterpret_cast< std::add_pointer_t<qint64>>(_a[1]))); break;
        case 7: _t->onDataReceived(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Socket::*)(QString );
            if (_t _q_method = &Socket::newLogFile; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Socket::*)(QString );
            if (_t _q_method = &Socket::newData; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Socket::*)();
            if (_t _q_method = &Socket::BBBdisconnected; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Socket::*)();
            if (_t _q_method = &Socket::BBBconnected; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
    }
}

const QMetaObject *Socket::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Socket::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSSocketENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Socket::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void Socket::newLogFile(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Socket::newData(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Socket::BBBdisconnected()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Socket::BBBconnected()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}
QT_WARNING_POP
