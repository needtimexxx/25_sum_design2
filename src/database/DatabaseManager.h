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
    
    QSqlDatabase db;
};