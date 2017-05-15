@if "%{TestFrameWork}" == "QtTest"
QT += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
@else
CONFIG -= qt
@endif
CONFIG -= app_bundle

TEMPLATE = app

TARGET = %{ProjectName}

SOURCES += %{MainCppName} \\
          mainwindow.cpp

HEADERS += mainwindow.h

FORMS += mainwindow.ui
