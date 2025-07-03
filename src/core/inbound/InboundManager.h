#pragma once
#include "Package.h"
#include <memory>
#include "ShelfAllocator.h"

// AVLNode前置声明
struct AVLNode;
class ShelfAllocator;

struct AVLNode {
    Package data;  // 节点数据
    shared_ptr<AVLNode> left;  // 左子节点
    shared_ptr<AVLNode> right; // 右子节点
    int height;  // 节点高度

    // 构造函数初始化节点
    AVLNode(const Package& pkg) : data(pkg), left(nullptr), right(nullptr), height(1) {}
};

class InboundManager {
public:
    InboundManager();
    ~InboundManager();
    
    // 添加快递
    bool addPackage(const Package& pkg);
    
    // 货架分配器
    string allocateShelf(const Package& pkg);
    
    // 根据单号查找快递
    Package* findPackage(const string& trackingNumber);
    
    // 获取所有快递(用于测试)
    vector<Package> getAllPackages() const;
    
private:
    ShelfAllocator shelfAllocator;
    shared_ptr<AVLNode> root;
    
    // AVL树辅助函数
    int getHeight(shared_ptr<AVLNode> node);
    int getBalanceFactor(shared_ptr<AVLNode> node);
    shared_ptr<AVLNode> rotateRight(shared_ptr<AVLNode> y);
    shared_ptr<AVLNode> rotateLeft(shared_ptr<AVLNode> x);
    shared_ptr<AVLNode> insert(shared_ptr<AVLNode> node, const Package& pkg);
    
    // 货架分配器
    //string allocateShelf(const Package& pkg);
    
    // 中序遍历辅助函数
    void inOrderTraversal(shared_ptr<AVLNode> node, vector<Package>& result) const;
};
