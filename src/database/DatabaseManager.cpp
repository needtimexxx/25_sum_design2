#include "DatabaseManager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

// 私有静态函数：PackageStatus枚举转int
int DatabaseManager::statusToInt(PackageStatus status) {
    switch (status) {
        case PackageStatus::IN_STOCK:   return 0;
        case PackageStatus::PICKED_UP: return 1;
        case PackageStatus::EXPRESS:   return 2;
        default:                       return 0; // 默认处理
    }
}

// 私有静态函数：int转PackageStatus枚举（如需从数据库读取时使用）
PackageStatus DatabaseManager::intToStatus(int value) {
    switch (value) {
        case 0:  return PackageStatus::IN_STOCK;
        case 1:  return PackageStatus::PICKED_UP;
        case 2:  return PackageStatus::EXPRESS;
        default: return PackageStatus::IN_STOCK; // 默认处理
    }
}

// 构造函数，初始化数据库连接
DatabaseManager::DatabaseManager() {
    db = QSqlDatabase::addDatabase("QMYSQL"); // 使用 MySQL 数据库驱动
    db.setHostName("localhost");              // 设置主机名
    db.setDatabaseName("courier_station");    // 设置数据库名
    db.setUserName("root");                   // 设置用户名
    db.setPassword("lxj999up");               // 设置密码
}

// 析构函数，关闭数据库连接
DatabaseManager::~DatabaseManager() {
    if (db.isOpen()) {
        db.close(); // 如果数据库已打开，则关闭
    }
}

// 获取 DatabaseManager 的单例实例
DatabaseManager& DatabaseManager::instance() {
    static DatabaseManager instance; // 静态局部变量，保证只创建一次
    return instance;
}

// 初始化数据库连接
bool DatabaseManager::initialize() {
    if (!db.open()) { // 尝试打开数据库
        qDebug() << "数据库连接出错:" << db.lastError().text(); // 输出错误信息
        return false;
    }
    return true;
}

// 添加快递包裹信息到数据库
bool DatabaseManager::addPackage(const Package& pkg) {
    QSqlQuery query;
    // 预处理 SQL 插入语句
    query.prepare("INSERT INTO packages (tracking_number, student_id, shelf_location, "
                  "arrival_time, pickup_time, status, priority) "
                  "VALUES (:tracking_number, :student_id, :shelf_location, "
                  ":arrival_time, :pickup_time, :status, :priority)");
    
    // 绑定参数
    query.bindValue(":tracking_number", QString::fromStdString(pkg.trackingNumber));
    query.bindValue(":student_id", QString::fromStdString(pkg.studentId));
    query.bindValue(":shelf_location", QString::fromStdString(pkg.shelfLocation));
    query.bindValue(":arrival_time", pkg.arrivalTime);
    query.bindValue(":pickup_time", pkg.pickupTime);
    query.bindValue(":status", statusToInt(pkg.status));
    query.bindValue(":priority", pkg.priority);
    
    // 执行 SQL 语句
    if (!query.exec()) 
    {
        qDebug() << "添加快递失败:" << query.lastError().text(); // 输出错误信息
        return false;
    }
    return true;
}

