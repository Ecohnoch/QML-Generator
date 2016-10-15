TEMPLATE = app

QT += core gui widgets qml quick multimedia av
CONFIG += c++11 resources_big

SOURCES += main.cpp

RESOURCES += qml.qrc \
    resources.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
