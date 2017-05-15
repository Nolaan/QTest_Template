%{Cpp:LicenseTemplate}\
@if "%{TestFrameWork}" == "QtTest"
%{JS: QtSupport.qtIncludes([ 'QtGui/QApplication' ],
                           [ 'QtWidgets/QApplication' ]) }\
#include "mainwindow.h"
// add necessary includes here

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
@else
#include <iostream>

int main(int , char **)
{
    std::cout << "Hello World!\\n";

    return 0;
}
@endif
