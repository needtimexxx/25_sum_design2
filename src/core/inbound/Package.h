#pragma once
#include <string>
#include <QtCore/QDateTime>
using namespace std;

// 快递状态枚举
enum class PackageStatus {
    IN_STOCK,       // 在库
    PICKED_UP,      // 已取件
    EXPRESS         // 急件
};

// 快递信息结构体
struct Package {
    string trackingNumber;    // 快递单号(主键)
    string studentId;        // 学生ID
    string shelfLocation;    // 货架位置
    QDateTime arrivalTime;        // 到达时间
    QDateTime pickupTime;         // 取件时间
    PackageStatus status;         // 快递状态
    int priority;                 // 优先级(急件有更高优先级)
    
    // 重载比较运算符，用于AVL树排序(按单号排序)，通过单号排序来决定存储顺序，并基于快递单号快速判断两个快递是否是同一个
    bool operator<(const Package& other) const {
        // 按照快递单号进行比较，若返回true，则表示当前对象小于other对象
        return trackingNumber < other.trackingNumber;
    }
    
    bool operator==(const Package& other) const 
    {
        // 返回true表示两个快递单号相同
        return trackingNumber == other.trackingNumber;
    }
};