#-------------------------------------------------
#
# Project created by QtCreator 2018-01-17T07:46:07
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = git-version
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui

#add a console window for debugging: https://stackoverflow.com/questions/40089148/how-the-outputs-in-qt-works
win32: CONFIG+= console

#add build date and time :http://www.qtforum.org/article/25886/build-date-in-the-about-box-solved.html (does not work)
#win32 {
#DEFINES += BUILDTIME=\\\""$$system('echo %time%')\\\""
#DEFINES += BUILDDATE=\\\""$$system('echo %date%')\\\""
#} else {
#DEFINES += BUILDTIME=\\\"$$system(date '+%H:%M.%s')\\\"
#DEFINES += BUILDDATE=\\\"$$system(date '+%d/%m/%y')\\\"
#}

#DEFINES += MY_DEFINE=""FOO_BAR""
#git version: https://bitbucket.org/mkarlsso/trodes/src/72c877d43e383ba7daf6e50a634b7cca61f79abd/Modules/SimpleCommunicator/SimpleCommunicator.pro?at=master&fileviewer=file-view-default
GIT_COMMAND = git  describe --always --all --tags --dirty --long

#must not contain spaces
GIT_COMMIT = $$system($$GIT_COMMAND)
DEFINES += GIT_COMMIT=\\\"$$GIT_COMMIT\\\"

#force Qmake to always run: https://stackoverflow.com/questions/12873437/force-qtcreator-to-run-qmake-when-building
qmakeforce.target = dummy
qmakeforce.commands = $$QMAKE_DEL_FILE Makefile ##to force rerun of qmake
qmakeforce.depends = FORCE
PRE_TARGETDEPS += $$qmakeforce.target
QMAKE_EXTRA_TARGETS += qmakeforce


#show the value of all defines: https://forum.qt.io/topic/82531/defines-in-qt-creator/9
message($$DEFINES)
