#pragma once
#include <QWidget>
#include "core/inbound/InboundManager.h"

namespace Ui {
class InboundWidget;
}

class InboundWidget : public QWidget {
    Q_OBJECT
    
public:
    explicit InboundWidget(QWidget* parent = nullptr);
    ~InboundWidget();
    
private slots:
    void on_submitButton_clicked();
    
private:
    Ui::InboundWidget* ui;
    InboundManager inboundManager;
};