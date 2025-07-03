#include "gui/MainWindow.h"
#include <QApplication>

int main(int argc, char *argv[]) {
    //Qt应用程序对象
    QApplication a(argc, argv);
    MainWindow w;  // 类名同步修改
    w.show();
    return a.exec();
}

