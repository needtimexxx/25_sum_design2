# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Qt\Tools\CMake_64\bin\cmake.exe

# The command to remove a file.
RM = D:\Qt\Tools\CMake_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Myself\25_sum_design2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Myself\25_sum_design2\build

# Include any dependencies generated for this target.
include CMakeFiles/InOut.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/InOut.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/InOut.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/InOut.dir/flags.make

ui_MainWindow.h: D:/Myself/25_sum_design2/src/gui/MainWindow.ui
ui_MainWindow.h: D:/Qt/6.9.1/mingw_64/bin/uic.exe
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ui_MainWindow.h"
	D:\Qt\6.9.1\mingw_64\bin\uic.exe -o D:/Myself/25_sum_design2/build/ui_MainWindow.h D:/Myself/25_sum_design2/src/gui/MainWindow.ui

ui_InboundWidget.h: D:/Myself/25_sum_design2/src/gui/widgets/InboundWidget.ui
ui_InboundWidget.h: D:/Qt/6.9.1/mingw_64/bin/uic.exe
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ui_InboundWidget.h"
	D:\Qt\6.9.1\mingw_64\bin\uic.exe -o D:/Myself/25_sum_design2/build/ui_InboundWidget.h D:/Myself/25_sum_design2/src/gui/widgets/InboundWidget.ui

src/gui/moc_MainWindow.cpp: D:/Myself/25_sum_design2/src/gui/MainWindow.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating src/gui/moc_MainWindow.cpp"
	cd /d D:\Myself\25_sum_design2\build\src\gui && D:\Qt\6.9.1\mingw_64\bin\moc.exe @D:/Myself/25_sum_design2/build/src/gui/moc_MainWindow.cpp_parameters

InOut_autogen/timestamp: D:/Qt/6.9.1/mingw_64/bin/moc.exe
InOut_autogen/timestamp: D:/Qt/6.9.1/mingw_64/bin/uic.exe
InOut_autogen/timestamp: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Automatic MOC and UIC for target InOut"
	D:\Qt\Tools\CMake_64\bin\cmake.exe -E cmake_autogen D:/Myself/25_sum_design2/build/CMakeFiles/InOut_autogen.dir/AutogenInfo.json Debug
	D:\Qt\Tools\CMake_64\bin\cmake.exe -E touch D:/Myself/25_sum_design2/build/InOut_autogen/timestamp

CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj: InOut_autogen/mocs_compilation.cpp
CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj -MF CMakeFiles\InOut.dir\InOut_autogen\mocs_compilation.cpp.obj.d -o CMakeFiles\InOut.dir\InOut_autogen\mocs_compilation.cpp.obj -c D:\Myself\25_sum_design2\build\InOut_autogen\mocs_compilation.cpp

CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\build\InOut_autogen\mocs_compilation.cpp > CMakeFiles\InOut.dir\InOut_autogen\mocs_compilation.cpp.i

CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\build\InOut_autogen\mocs_compilation.cpp -o CMakeFiles\InOut.dir\InOut_autogen\mocs_compilation.cpp.s

CMakeFiles/InOut.dir/src/main.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/main.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/main.cpp.obj: D:/Myself/25_sum_design2/src/main.cpp
CMakeFiles/InOut.dir/src/main.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/InOut.dir/src/main.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/main.cpp.obj -MF CMakeFiles\InOut.dir\src\main.cpp.obj.d -o CMakeFiles\InOut.dir\src\main.cpp.obj -c D:\Myself\25_sum_design2\src\main.cpp

CMakeFiles/InOut.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/main.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\src\main.cpp > CMakeFiles\InOut.dir\src\main.cpp.i

CMakeFiles/InOut.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/main.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\src\main.cpp -o CMakeFiles\InOut.dir\src\main.cpp.s

CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj: D:/Myself/25_sum_design2/src/gui/MainWindow.cpp
CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj -MF CMakeFiles\InOut.dir\src\gui\MainWindow.cpp.obj.d -o CMakeFiles\InOut.dir\src\gui\MainWindow.cpp.obj -c D:\Myself\25_sum_design2\src\gui\MainWindow.cpp

CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\src\gui\MainWindow.cpp > CMakeFiles\InOut.dir\src\gui\MainWindow.cpp.i

CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\src\gui\MainWindow.cpp -o CMakeFiles\InOut.dir\src\gui\MainWindow.cpp.s

CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj: D:/Myself/25_sum_design2/src/gui/widgets/InboundWidget.cpp
CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj -MF CMakeFiles\InOut.dir\src\gui\widgets\InboundWidget.cpp.obj.d -o CMakeFiles\InOut.dir\src\gui\widgets\InboundWidget.cpp.obj -c D:\Myself\25_sum_design2\src\gui\widgets\InboundWidget.cpp

CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\src\gui\widgets\InboundWidget.cpp > CMakeFiles\InOut.dir\src\gui\widgets\InboundWidget.cpp.i

CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\src\gui\widgets\InboundWidget.cpp -o CMakeFiles\InOut.dir\src\gui\widgets\InboundWidget.cpp.s

CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj: D:/Myself/25_sum_design2/src/core/inbound/InboundManager.cpp
CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj -MF CMakeFiles\InOut.dir\src\core\inbound\InboundManager.cpp.obj.d -o CMakeFiles\InOut.dir\src\core\inbound\InboundManager.cpp.obj -c D:\Myself\25_sum_design2\src\core\inbound\InboundManager.cpp

CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\src\core\inbound\InboundManager.cpp > CMakeFiles\InOut.dir\src\core\inbound\InboundManager.cpp.i

CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\src\core\inbound\InboundManager.cpp -o CMakeFiles\InOut.dir\src\core\inbound\InboundManager.cpp.s

CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj: D:/Myself/25_sum_design2/src/core/inbound/ShelfAllocator.cpp
CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj -MF CMakeFiles\InOut.dir\src\core\inbound\ShelfAllocator.cpp.obj.d -o CMakeFiles\InOut.dir\src\core\inbound\ShelfAllocator.cpp.obj -c D:\Myself\25_sum_design2\src\core\inbound\ShelfAllocator.cpp

CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\src\core\inbound\ShelfAllocator.cpp > CMakeFiles\InOut.dir\src\core\inbound\ShelfAllocator.cpp.i

CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\src\core\inbound\ShelfAllocator.cpp -o CMakeFiles\InOut.dir\src\core\inbound\ShelfAllocator.cpp.s

CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj: D:/Myself/25_sum_design2/src/database/DatabaseManager.cpp
CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj -MF CMakeFiles\InOut.dir\src\database\DatabaseManager.cpp.obj.d -o CMakeFiles\InOut.dir\src\database\DatabaseManager.cpp.obj -c D:\Myself\25_sum_design2\src\database\DatabaseManager.cpp

CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\src\database\DatabaseManager.cpp > CMakeFiles\InOut.dir\src\database\DatabaseManager.cpp.i

CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\src\database\DatabaseManager.cpp -o CMakeFiles\InOut.dir\src\database\DatabaseManager.cpp.s

CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj: CMakeFiles/InOut.dir/flags.make
CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj: CMakeFiles/InOut.dir/includes_CXX.rsp
CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj: src/gui/moc_MainWindow.cpp
CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj: CMakeFiles/InOut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj -MF CMakeFiles\InOut.dir\src\gui\moc_MainWindow.cpp.obj.d -o CMakeFiles\InOut.dir\src\gui\moc_MainWindow.cpp.obj -c D:\Myself\25_sum_design2\build\src\gui\moc_MainWindow.cpp

CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.i"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Myself\25_sum_design2\build\src\gui\moc_MainWindow.cpp > CMakeFiles\InOut.dir\src\gui\moc_MainWindow.cpp.i

CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.s"
	D:\Qt\Tools\mingw1310_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Myself\25_sum_design2\build\src\gui\moc_MainWindow.cpp -o CMakeFiles\InOut.dir\src\gui\moc_MainWindow.cpp.s

# Object files for target InOut
InOut_OBJECTS = \
"CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj" \
"CMakeFiles/InOut.dir/src/main.cpp.obj" \
"CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj" \
"CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj" \
"CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj" \
"CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj" \
"CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj" \
"CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj"

# External object files for target InOut
InOut_EXTERNAL_OBJECTS =

InOut.exe: CMakeFiles/InOut.dir/InOut_autogen/mocs_compilation.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/main.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/gui/MainWindow.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/gui/widgets/InboundWidget.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/core/inbound/InboundManager.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/core/inbound/ShelfAllocator.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/database/DatabaseManager.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/src/gui/moc_MainWindow.cpp.obj
InOut.exe: CMakeFiles/InOut.dir/build.make
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6Widgets.a
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6Sql.a
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6Multimedia.a
InOut.exe: D:/Myself/mysql-connector-c++-9.3.0-winx64/lib64/vs14/mysqlcppconn.lib
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6Gui.a
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6Network.a
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6Core.a
InOut.exe: D:/Qt/6.9.1/mingw_64/lib/libQt6EntryPoint.a
InOut.exe: CMakeFiles/InOut.dir/linkLibs.rsp
InOut.exe: CMakeFiles/InOut.dir/objects1.rsp
InOut.exe: CMakeFiles/InOut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\Myself\25_sum_design2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable InOut.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\InOut.dir\link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying MySQL DLL to output directory"
	D:\Qt\Tools\CMake_64\bin\cmake.exe -E copy D:/Myself/mysql-connector-c++-9.3.0-winx64/lib64/mysqlcppconn-10-vs14.dll D:/Myself/25_sum_design2/build/

# Rule to build all files generated by this target.
CMakeFiles/InOut.dir/build: InOut.exe
.PHONY : CMakeFiles/InOut.dir/build

CMakeFiles/InOut.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\InOut.dir\cmake_clean.cmake
.PHONY : CMakeFiles/InOut.dir/clean

CMakeFiles/InOut.dir/depend: InOut_autogen/timestamp
CMakeFiles/InOut.dir/depend: src/gui/moc_MainWindow.cpp
CMakeFiles/InOut.dir/depend: ui_InboundWidget.h
CMakeFiles/InOut.dir/depend: ui_MainWindow.h
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Myself\25_sum_design2 D:\Myself\25_sum_design2 D:\Myself\25_sum_design2\build D:\Myself\25_sum_design2\build D:\Myself\25_sum_design2\build\CMakeFiles\InOut.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/InOut.dir/depend

