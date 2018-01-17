#include "mainwindow.h"
#include <QApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

    QString git=GIT_COMMIT;
    qDebug() << "Git version:" << git;
    qDebug() << "Build on:" << __DATE__ << __TIME__;

    w.show();

    return a.exec();
}
