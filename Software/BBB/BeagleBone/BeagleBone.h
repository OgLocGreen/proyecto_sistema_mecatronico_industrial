#ifndef BEAGLEBONE_H
#define BEAGLEBONE_H

#include <QObject>

#include <Data.h>


class BeagleBone : public QObject
{
    Q_OBJECT
    Data& myData;
public:
    BeagleBone(Data& myDataadrs);

};

#endif // BEAGLEBONE_H
