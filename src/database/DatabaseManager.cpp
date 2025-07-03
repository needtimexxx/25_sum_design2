#include "DatabaseManager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

DatabaseManager::DatabaseManager() {
    db = QSqlDatabase::addDatabase("QMYSQL");
    db.setHostName("localhost");
    db.setDatabaseName("courier_station");
    db.setUserName("root");
    db.setPassword("password");
}

DatabaseManager::~DatabaseManager() {
    if (db.isOpen()) {
        db.close();
    }
}

DatabaseManager& DatabaseManager::instance() {
    static DatabaseManager instance;
    return instance;
}

bool DatabaseManager::initialize() {
    if (!db.open()) {
        qDebug() << "数据库连接出错:" << db.lastError().text();
        return false;
    }
    return true;
}

bool DatabaseManager::addPackage(const Package& pkg) {
    QSqlQuery query;
    query.prepare("INSERT INTO packages (tracking_number, student_id, shelf_location, "
                  "arrival_time, pickup_time, status, priority) "
                  "VALUES (:tracking_number, :student_id, :shelf_location, "
                  ":arrival_time, :pickup_time, :status, :priority)");
    
    query.bindValue(":tracking_number", QString::fromStdString(pkg.trackingNumber));
    query.bindValue(":student_id", QString::fromStdString(pkg.studentId));
    query.bindValue(":shelf_location", QString::fromStdString(pkg.shelfLocation));
    query.bindValue(":arrival_time", pkg.arrivalTime);
    query.bindValue(":pickup_time", pkg.pickupTime);
    query.bindValue(":status", static_cast<int>(pkg.status));
    query.bindValue(":priority", pkg.priority);
    
    if (!query.exec()) {
        qDebug() << "添加快递失败:" << query.lastError().text();
        return false;
    }
    return true;
}