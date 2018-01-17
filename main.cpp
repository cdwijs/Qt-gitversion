#include "mainwindow.h"
#include <QApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

    QString git=GIT_COMMIT;
    qDebug() << git;

//    QString date=BUILDDATE;
//    QString time=BUILDTIME;
//    QString mydefine(MY_DEFINE);
//    qDebug() << date;
//    qDebug() << time;
//    qDebug() << mydefine;

    w.show();

    return a.exec();
}
