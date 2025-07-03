#include "InboundWidget.h"
#include "ui_InboundWidget.h"
#include "core/inbound/Package.h"
#include <QDateTime>
#include <QMessageBox>
#include "database/DatabaseManager.h"

InboundWidget::InboundWidget(QWidget* parent) 
    : QWidget(parent), ui(new Ui::InboundWidget) {
    ui->setupUi(this);
}

InboundWidget::~InboundWidget() {
    delete ui;
}

void InboundWidget::on_submitButton_clicked() {
    Package pkg;
    pkg.trackingNumber = ui->trackingNumberEdit->text().toStdString();
    pkg.studentId = ui->studentIdEdit->text().toStdString();
    pkg.arrivalTime = QDateTime::currentDateTime();
    pkg.status = ui->expressCheckBox->isChecked() ? PackageStatus::EXPRESS : PackageStatus::IN_STOCK;
    pkg.priority = pkg.status == PackageStatus::EXPRESS ? 1 : 0;
    
    try {
        // 分配货架
        pkg.shelfLocation = inboundManager.allocateShelf(pkg);
        
        // 添加到内存数据结构
        if (inboundManager.addPackage(pkg)) 
        {
            // 添加到数据库
            if (DatabaseManager::instance().addPackage(pkg)) 
            {
                QMessageBox::information(this, "成功", "快递入库成功！\n货架位置: " + 
                                       QString::fromStdString(pkg.shelfLocation));
                ui->trackingNumberEdit->clear();
                ui->studentIdEdit->clear();
                ui->expressCheckBox->setChecked(false);
            } 
            else 
            {
                QMessageBox::warning(this, "错误", "数据库保存失败！");
            }
        } 
        else 
        {
            QMessageBox::warning(this, "错误", "添加快递失败，可能是单号重复！");
        }
    } 
    
    catch (const std::exception& e) {
        QMessageBox::critical(this, "错误", e.what());
    }
}