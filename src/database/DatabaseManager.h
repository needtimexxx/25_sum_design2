#pragma once
#include <QSqlDatabase>
#include "core/inbound/Package.h"

class DatabaseManager {
public:
    static DatabaseManager& instance();   
    bool initialize();
    bool addPackage(const Package& pkg);
    bool removePackage(const std::string& trackingNumber);
    Package findPackage(const std::string& trackingNumber);
    
private:

    DatabaseManager();
    ~DatabaseManager();
    // 新增枚举转换函数声明
    static int statusToInt(PackageStatus status);
    static PackageStatus intToStatus(int value);
    
    QSqlDatabase db;
};