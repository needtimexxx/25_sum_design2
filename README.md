### 可移植性不强：CMakeList.txt  
#### Qt配置路径、mysql配置(3步)

### 工具包选择：GCC 13.1.0 x86_64-w64-mingw32
#### 路径：D:\Qt\Tools\mingw1310_64\bin\gcc.exe,D:\Qt\Tools\mingw1310_64\bin\g++.exe

### c_cpp_properties.json文件
#### "includePath" 路径配置，不配置会导致头文件无法识别
#### "compilerPath"编译器配置路径

### 项目目录结构：
CourierStation/
├── CMakeLists.txt
├── src/
│   ├── core/              # 核心业务逻辑
│   │   ├── inbound/      # 入库模块
│   │   ├── outbound/     # 出库模块
│   │   └── search/       # 查询模块
│   ├── gui/              # 界面相关
│   │   ├── MainWindow.cpp
│   │   ├── MainWindow.h
│   │   ├── MainWindow.ui
│   │   └── widgets/      # 自定义控件
│   ├── database/         # 数据库连接层
│   └── main.cpp          # 程序入口
├── resources/            # 资源文件
│   ├── images/           # 图片素材
│   ├── styles/           # QSS样式表
│   └── translations/     # 多语言文件
├── third_party/          # 第三方库
└── build/                # 构建目录