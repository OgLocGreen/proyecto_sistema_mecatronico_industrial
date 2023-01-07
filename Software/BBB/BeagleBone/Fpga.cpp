#include "Fpga.h"

Fpga::Fpga()
{

}

void Fpga::OnDataReceived(QString arg1, QString arg2)
{
    fpga_data = arg1.toInt()+ arg2.toInt();
    sendItToRS232(fpga_data);
}
