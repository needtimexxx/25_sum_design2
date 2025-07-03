#include "ShelfAllocator.h"
#include <stdexcept>
#include <algorithm>

ShelfAllocator::ShelfAllocator(int shelfCount, int slotsPerShelf) 
    : shelfCount(shelfCount), slotsPerShelf(slotsPerShelf) {
    if (shelfCount <= 0 || slotsPerShelf <= 0) {
        throw invalid_argument("无效的货架设置");
    }
}

string ShelfAllocator::makeShelfLocation(int shelf, int slot) const {
    return "S-" + to_string(shelf) + "-" + to_string(slot);
}

pair<int, int> ShelfAllocator::findOptimalShelf(const Package& pkg) const {
    // 简单贪心算法：找使用最少的货架
    int minUsage = slotsPerShelf + 1;
    int bestShelf = 1;
    
    for (int shelf = 1; shelf <= shelfCount; ++shelf) 
    {
        string shelfPrefix = "S-" + to_string(shelf) + "-";
        int usage = 0;
        
        for (const auto& entry : shelfUsage) 
        {
            if (entry.first.find(shelfPrefix) == 0) 
            {
                usage++;
            }
        }
        
        if (usage < minUsage && usage < slotsPerShelf) 
        {
            minUsage = usage;
            bestShelf = shelf;
        }
    }

    // 找到该货架的第一个可用位置
    for (int slot = 1; slot <= slotsPerShelf; ++slot) 
    {
        string location = makeShelfLocation(bestShelf, slot);
        if (shelfUsage.find(location) == shelfUsage.end()) {
            return {bestShelf, slot};
        }
    }
    
    throw runtime_error("没有可用的货架位置");
}

string ShelfAllocator::allocateShelf(const Package& pkg) {
    auto [shelf, slot] = findOptimalShelf(pkg);
    string location = makeShelfLocation(shelf, slot);
    shelfUsage[location] = 1;  // 标记为已使用
    return location;
}

void ShelfAllocator::releaseShelf(const string& shelfLocation) {
    shelfUsage.erase(shelfLocation);
}