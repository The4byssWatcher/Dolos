# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/madking/Documents/C++/Dolos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/madking/Documents/C++/Dolos/build

# Include any dependencies generated for this target.
include CMakeFiles/dolos.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dolos.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dolos.dir/flags.make

CMakeFiles/dolos.dir/src/Server/Server.cpp.o: CMakeFiles/dolos.dir/flags.make
CMakeFiles/dolos.dir/src/Server/Server.cpp.o: ../src/Server/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/madking/Documents/C++/Dolos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dolos.dir/src/Server/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dolos.dir/src/Server/Server.cpp.o -c /home/madking/Documents/C++/Dolos/src/Server/Server.cpp

CMakeFiles/dolos.dir/src/Server/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dolos.dir/src/Server/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/madking/Documents/C++/Dolos/src/Server/Server.cpp > CMakeFiles/dolos.dir/src/Server/Server.cpp.i

CMakeFiles/dolos.dir/src/Server/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dolos.dir/src/Server/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/madking/Documents/C++/Dolos/src/Server/Server.cpp -o CMakeFiles/dolos.dir/src/Server/Server.cpp.s

CMakeFiles/dolos.dir/src/Server/main.cpp.o: CMakeFiles/dolos.dir/flags.make
CMakeFiles/dolos.dir/src/Server/main.cpp.o: ../src/Server/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/madking/Documents/C++/Dolos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dolos.dir/src/Server/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dolos.dir/src/Server/main.cpp.o -c /home/madking/Documents/C++/Dolos/src/Server/main.cpp

CMakeFiles/dolos.dir/src/Server/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dolos.dir/src/Server/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/madking/Documents/C++/Dolos/src/Server/main.cpp > CMakeFiles/dolos.dir/src/Server/main.cpp.i

CMakeFiles/dolos.dir/src/Server/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dolos.dir/src/Server/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/madking/Documents/C++/Dolos/src/Server/main.cpp -o CMakeFiles/dolos.dir/src/Server/main.cpp.s

# Object files for target dolos
dolos_OBJECTS = \
"CMakeFiles/dolos.dir/src/Server/Server.cpp.o" \
"CMakeFiles/dolos.dir/src/Server/main.cpp.o"

# External object files for target dolos
dolos_EXTERNAL_OBJECTS =

../bin/dolos: CMakeFiles/dolos.dir/src/Server/Server.cpp.o
../bin/dolos: CMakeFiles/dolos.dir/src/Server/main.cpp.o
../bin/dolos: CMakeFiles/dolos.dir/build.make
../bin/dolos: CMakeFiles/dolos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/madking/Documents/C++/Dolos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/dolos"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dolos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dolos.dir/build: ../bin/dolos

.PHONY : CMakeFiles/dolos.dir/build

CMakeFiles/dolos.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dolos.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dolos.dir/clean

CMakeFiles/dolos.dir/depend:
	cd /home/madking/Documents/C++/Dolos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/madking/Documents/C++/Dolos /home/madking/Documents/C++/Dolos /home/madking/Documents/C++/Dolos/build /home/madking/Documents/C++/Dolos/build /home/madking/Documents/C++/Dolos/build/CMakeFiles/dolos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dolos.dir/depend
