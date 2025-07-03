#include "MainWindow.h"
#include "ui_MainWindow.h"
#include <QDateTime>
#include <QDebug>

MainWindow::MainWindow(QWidget* parent)
    : QMainWindow(parent), ui(new Ui::MainWindow) {
    ui->setupUi(this);
    
    // 初始化入库界面
    inboundWidget = new InboundWidget(this);
    setCentralWidget(inboundWidget);
    
    // 设置窗口标题和大小
    setWindowTitle("快递驿站管理系统");
    resize(800, 600);
}

MainWindow::~MainWindow() {
    delete ui;
}