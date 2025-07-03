cmake_minimum_required(VERSION 3.5)
project(InOut LANGUAGES CXX)

# 基础配置
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Qt路径配置
set(QT_DIR "D:/Qt/6.9.1/mingw_64")

# set(Qt6Core_INCLUDE_DIRS "D:/Qt/6.9.1/mingw_64/include/QtCore")
# set(Qt6Gui_INCLUDE_DIRS "D:/Qt/6.9.1/mingw_64/include/QtGui")

message(STATUS "Using QT path: ${QT_DIR}")
set(CMAKE_PREFIX_PATH ${QT_DIR})

# 查找Qt组件（单次完整声明）
find_package(Qt6 REQUIRED COMPONENTS 
    Core 
    Gui 
    Widgets 
    Sql 
    Multimedia
    Network
)

include_directories(
    ${Qt6Core_INCLUDE_DIRS}  # 显式添加 QtCore 头文件路径
    ${Qt6Gui_INCLUDE_DIRS}
    # 其他必要的 Qt 模块路径...
)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${CMAKE_CURRENT_SOURCE_DIR}/src/gui
    ${CMAKE_CURRENT_SOURCE_DIR}/src/gui/widgets
    
)

# ===== MySQL 手动配置 =====
set(MYSQL_CONNECTOR_DIR "D:/Myself/mysql-connector-c++-9.3.0-winx64")

# 1. 设置头文件和库路径
set(MySQL_INCLUDE_DIR "${MYSQL_CONNECTOR_DIR}/include")
set(MySQL_LIBRARY "${MYSQL_CONNECTOR_DIR}/lib64/vs14/mysqlcppconn.lib")

# 2. 创建导入目标
add_library(MySQL::MySQL SHARED IMPORTED)
set_target_properties(MySQL::MySQL PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${MySQL_INCLUDE_DIR}"
    IMPORTED_IMPLIB "${MySQL_LIBRARY}"
    IMPORTED_LOCATION "${MYSQL_CONNECTOR_DIR}/lib64/mysqlcppconn-10-vs14.dll"
)

# 3. 包含头文件目录
include_directories(${MySQL_INCLUDE_DIR})

# ===== 源文件配置 =====
set(SRC_FILES
    src/main.cpp
    src/gui/MainWindow.cpp
    src/gui/MainWindow.h
    src/gui/MainWindow.ui
    src/gui/widgets/InboundWidget.cpp
    src/gui/widgets/InboundWidget.h
    src/gui/widgets/InboundWidget.ui
    src/core/inbound/InboundManager.cpp
    src/core/inbound/InboundManager.h
    src/core/inbound/Package.h
    src/core/inbound/ShelfAllocator.cpp
    src/core/inbound/ShelfAllocator.h
    src/database/DatabaseManager.cpp
    src/database/DatabaseManager.h
)

# 添加UIC/MOC处理（关键）
qt_wrap_ui(UI_FILES src/gui/MainWindow.ui)
qt_wrap_cpp(MOC_FILES src/gui/MainWindow.h)
qt_wrap_ui(UI_FILES src/gui/widgets/InboundWidget.ui
)

# ===== 资源文件配置 =====
# 添加Qt资源文件
qt_add_resources(QRC_FILES
    "resources/images.qrc"
    "resources/styles.qrc"
)


# 平台特定配置
if(WIN32 AND MINGW)
    add_compile_options(-Wa,-mbig-obj)
endif()

# 可执行文件配置
add_executable(${PROJECT_NAME} WIN32
    ${SRC_FILES}
    ${UI_FILES}
    ${MOC_FILES}
)

# 复制mysql dll
if(WIN32)
    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy
            "${MYSQL_CONNECTOR_DIR}/lib64/mysqlcppconn-10-vs14.dll"
            $<TARGET_FILE_DIR:${PROJECT_NAME}>/
        COMMENT "Copying MySQL DLL to output directory"
    )
endif()

# 链接库
target_link_libraries(${PROJECT_NAME}
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
    Qt6::Sql
    Qt6::Multimedia
    MySQL::MySQL
)