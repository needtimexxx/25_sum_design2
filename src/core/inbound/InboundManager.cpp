#include "InboundManager.h"
#include <algorithm>
#include <stdexcept>

InboundManager::InboundManager() 
    : root(nullptr), shelfAllocator(10, 20) 
    // 假设有10个货架，每个20个位置
    {}

string InboundManager::allocateShelf(const Package& pkg) {
    // 急件分配到更易访问的货架（前几个货架）
    if (pkg.status == PackageStatus::EXPRESS) {
        // 为急件预留前3个货架
        ShelfAllocator expressAllocator(3, 20);
        return expressAllocator.allocateShelf(pkg);
    }
    return shelfAllocator.allocateShelf(pkg);
}

InboundManager::~InboundManager() {
    // 自动释放内存
}

// 获取节点高度
int InboundManager::getHeight(shared_ptr<AVLNode> node) {
    return node ? node->height : 0;
}

// 获取平衡因子
int InboundManager::getBalanceFactor(shared_ptr<AVLNode> node) {
    return node ? getHeight(node->left) - getHeight(node->right) : 0;
}

// 右旋转
shared_ptr<AVLNode> InboundManager::rotateRight(shared_ptr<AVLNode> y) {
    auto x = y->left;
    auto T2 = x->right;
    
    // 执行旋转
    x->right = y;
    y->left = T2;
    
    // 更新高度
    y->height = max(getHeight(y->left), getHeight(y->right)) + 1;
    x->height = max(getHeight(x->left), getHeight(x->right)) + 1;
    
    return x;
}

// 左旋转
shared_ptr<AVLNode> InboundManager::rotateLeft(shared_ptr<AVLNode> x) {
    auto y = x->right;
    auto T2 = y->left;
    
    // 执行旋转
    y->left = x;
    x->right = T2;
    
    // 更新高度
    x->height = max(getHeight(x->left), getHeight(x->right)) + 1;
    y->height = max(getHeight(y->left), getHeight(y->right)) + 1;
    
    return y;
}

// 插入节点
shared_ptr<AVLNode> InboundManager::insert(shared_ptr<AVLNode> node, const Package& pkg) {
    // 1. 执行标准BST插入
    if (!node) {
        return make_shared<AVLNode>(pkg);
    }
    
    if (pkg < node->data) 
    {
        node->left = insert(node->left, pkg);
    } 
    else if (node->data < pkg) 
    {
        node->right = insert(node->right, pkg);
    } 
    else 
    {
        // 重复的单号不允许插入
        throw runtime_error("Duplicate tracking number");
    }
    
    // 2. 更新节点高度
    node->height = 1 + max(getHeight(node->left), getHeight(node->right));
    
    // 3. 获取平衡因子检查是否不平衡
    int balance = getBalanceFactor(node);
    
    // 4. 如果不平衡，有4种情况
    
    // 左左情况
    if (balance > 1 && pkg < node->left->data) 
    {
        return rotateRight(node);
    }
    
    // 右右情况
    if (balance < -1 && node->right->data < pkg) 
    {
        return rotateLeft(node);
    }
    
    // 左右情况
    if (balance > 1 && node->left->data < pkg) 
    {
        node->left = rotateLeft(node->left);
        return rotateRight(node);
    }
    
    // 右左情况
    if (balance < -1 && pkg < node->right->data) {
        node->right = rotateRight(node->right);
        return rotateLeft(node);
    }
    
    // 返回未改变的节点指针
    return node;
}

// 添加快递
bool InboundManager::addPackage(const Package& pkg) {
    try {
        root = insert(root, pkg);
        return true;
    } catch (const exception& e) {
        // 处理重复单号等情况
        return false;
    }
}

// 查找快递
Package* InboundManager::findPackage(const string& trackingNumber) {
    auto current = root;
    Package temp;
    temp.trackingNumber = trackingNumber;
    
    while (current) {
        if (temp < current->data) {
            current = current->left;
        } else if (current->data < temp) {
            current = current->right;
        } else {
            return &current->data;
        }
    }
    
    return nullptr;
}

// 中序遍历获取所有快递
void InboundManager::inOrderTraversal(shared_ptr<AVLNode> node, vector<Package>& result) const {
    if (!node) return;
    
    inOrderTraversal(node->left, result);
    result.push_back(node->data);
    inOrderTraversal(node->right, result);
}

vector<Package> InboundManager::getAllPackages() const {
    vector<Package> result;
    inOrderTraversal(root, result);
    return result;
}
