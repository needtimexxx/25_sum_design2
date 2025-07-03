#pragma once
#include <QMainWindow>
#include "widgets/InboundWidget.h"


namespace Ui { class MainWindow; }  // 前向声明

class MainWindow : public QMainWindow {
    Q_OBJECT
public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;  // 同步修改类名
    InboundWidget* inboundWidget;
};