# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\School\2023_FALL\CS 2420\Mod7\Graphs"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\School\2023_FALL\CS 2420\Mod7\Graphs\build"

# Include any dependencies generated for this target.
include CMakeFiles/Graphs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Graphs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Graphs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Graphs.dir/flags.make

CMakeFiles/Graphs.dir/src/Main.cpp.obj: CMakeFiles/Graphs.dir/flags.make
CMakeFiles/Graphs.dir/src/Main.cpp.obj: D:/School/2023_FALL/CS\ 2420/Mod7/Graphs/src/Main.cpp
CMakeFiles/Graphs.dir/src/Main.cpp.obj: CMakeFiles/Graphs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\School\2023_FALL\CS 2420\Mod7\Graphs\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Graphs.dir/src/Main.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graphs.dir/src/Main.cpp.obj -MF CMakeFiles\Graphs.dir\src\Main.cpp.obj.d -o CMakeFiles\Graphs.dir\src\Main.cpp.obj -c "D:\School\2023_FALL\CS 2420\Mod7\Graphs\src\Main.cpp"

CMakeFiles/Graphs.dir/src/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graphs.dir/src/Main.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\School\2023_FALL\CS 2420\Mod7\Graphs\src\Main.cpp" > CMakeFiles\Graphs.dir\src\Main.cpp.i

CMakeFiles/Graphs.dir/src/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graphs.dir/src/Main.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\School\2023_FALL\CS 2420\Mod7\Graphs\src\Main.cpp" -o CMakeFiles\Graphs.dir\src\Main.cpp.s

# Object files for target Graphs
Graphs_OBJECTS = \
"CMakeFiles/Graphs.dir/src/Main.cpp.obj"

# External object files for target Graphs
Graphs_EXTERNAL_OBJECTS =

Graphs.exe: CMakeFiles/Graphs.dir/src/Main.cpp.obj
Graphs.exe: CMakeFiles/Graphs.dir/build.make
Graphs.exe: CMakeFiles/Graphs.dir/linkLibs.rsp
Graphs.exe: CMakeFiles/Graphs.dir/objects1.rsp
Graphs.exe: CMakeFiles/Graphs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="D:\School\2023_FALL\CS 2420\Mod7\Graphs\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Graphs.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Graphs.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Graphs.dir/build: Graphs.exe
.PHONY : CMakeFiles/Graphs.dir/build

CMakeFiles/Graphs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Graphs.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Graphs.dir/clean

CMakeFiles/Graphs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\School\2023_FALL\CS 2420\Mod7\Graphs" "D:\School\2023_FALL\CS 2420\Mod7\Graphs" "D:\School\2023_FALL\CS 2420\Mod7\Graphs\build" "D:\School\2023_FALL\CS 2420\Mod7\Graphs\build" "D:\School\2023_FALL\CS 2420\Mod7\Graphs\build\CMakeFiles\Graphs.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Graphs.dir/depend

