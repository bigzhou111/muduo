# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/tmp.qtZqkEJNaz

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.qtZqkEJNaz/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/muduo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/muduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/muduo.dir/flags.make

CMakeFiles/muduo.dir/main.cpp.o: CMakeFiles/muduo.dir/flags.make
CMakeFiles/muduo.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /tmp/tmp.qtZqkEJNaz/cmake-build-debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/muduo.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/muduo.dir/main.cpp.o -c /tmp/tmp.qtZqkEJNaz/main.cpp

CMakeFiles/muduo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /tmp/tmp.qtZqkEJNaz/main.cpp > CMakeFiles/muduo.dir/main.cpp.i

CMakeFiles/muduo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /tmp/tmp.qtZqkEJNaz/main.cpp -o CMakeFiles/muduo.dir/main.cpp.s

CMakeFiles/muduo.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/muduo.dir/main.cpp.o.requires

CMakeFiles/muduo.dir/main.cpp.o.provides: CMakeFiles/muduo.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/muduo.dir/build.make CMakeFiles/muduo.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/muduo.dir/main.cpp.o.provides

CMakeFiles/muduo.dir/main.cpp.o.provides.build: CMakeFiles/muduo.dir/main.cpp.o

# Object files for target muduo
muduo_OBJECTS = \
"CMakeFiles/muduo.dir/main.cpp.o"

# External object files for target muduo
muduo_EXTERNAL_OBJECTS =

muduo: CMakeFiles/muduo.dir/main.cpp.o
muduo: CMakeFiles/muduo.dir/build.make
muduo: CMakeFiles/muduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable muduo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/muduo.dir/build: muduo
.PHONY : CMakeFiles/muduo.dir/build

CMakeFiles/muduo.dir/requires: CMakeFiles/muduo.dir/main.cpp.o.requires
.PHONY : CMakeFiles/muduo.dir/requires

CMakeFiles/muduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/muduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/muduo.dir/clean

CMakeFiles/muduo.dir/depend:
	cd /tmp/tmp.qtZqkEJNaz/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.qtZqkEJNaz /tmp/tmp.qtZqkEJNaz /tmp/tmp.qtZqkEJNaz/cmake-build-debug /tmp/tmp.qtZqkEJNaz/cmake-build-debug /tmp/tmp.qtZqkEJNaz/cmake-build-debug/CMakeFiles/muduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/muduo.dir/depend
