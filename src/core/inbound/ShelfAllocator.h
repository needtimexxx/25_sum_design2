#pragma once
#include "Package.h"
#include <vector>
#include <map>
#include <algorithm>

class ShelfAllocator {
public:
    ShelfAllocator(int shelfCount, int slotsPerShelf);

    // 分配货架位置
    string allocateShelf(const Package& pkg);
    // 释放货架位置
    void releaseShelf(const string& shelfLocation);

private:
    int shelfCount;
    int slotsPerShelf;

    // 记录每个货架的使用情况
    map<string, int> shelfUsage;
    // 生成货架位置字符串
    string makeShelfLocation(int shelf, int slot) const;
    // 贪心算法找到最优货架
    pair<int, int> findOptimalShelf(const Package& pkg) const;
};
