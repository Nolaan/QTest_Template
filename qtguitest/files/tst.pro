@if "%{TestFrameWork}" == "QtTest"
QT += testlib
QT += gui core widgets
CONFIG += qt warn_on depend_includepath testcase
CONFIG += c++14
CONFIG -= app_bundle

TEMPLATE = app

SOURCES +=  %{TestCaseFileWithCppSuffix} \\
            ../../../src/mainwindow.cpp \\
            ../../../src/moc_mainwindow.cpp
HEADERS += \
    %{TestCaseFileWithHeaderSuffix} \\
    ui_mainwindow.h \\
    mainwindow.h

INCLUDEPATH += ../../../src
DEPENDPATH += ../../../src

FORMS += ../../../src/mainwindow.ui

@else
include(../gtest_dependency.pri)

TEMPLATE = app
@if "%{GTestCXX11}" == "true"
CONFIG += console c++11
@else
CONFIG += console
@endif
CONFIG -= app_bundle
CONFIG += thread
CONFIG -= qt

HEADERS += \
    %{TestCaseFileWithHeaderSuffix} \\
    ui_mainwindow.h \\
    mainwindow.h

SOURCES += \
    %{MainCppName}
@endif
