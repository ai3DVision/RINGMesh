# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/levy/Programming/Vorpaline/trunk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/levy/Programming/Vorpaline/trunk

# Include any dependencies generated for this target.
include src/test/compute_OTM/CMakeFiles/compute_OTM.dir/depend.make

# Include the progress variables for this target.
include src/test/compute_OTM/CMakeFiles/compute_OTM.dir/progress.make

# Include the compile flags for this target's objects.
include src/test/compute_OTM/CMakeFiles/compute_OTM.dir/flags.make

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/flags.make
src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o: src/test/compute_OTM/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/levy/Programming/Vorpaline/trunk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o"
	cd /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compute_OTM.dir/main.cpp.o -c /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM/main.cpp

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compute_OTM.dir/main.cpp.i"
	cd /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM/main.cpp > CMakeFiles/compute_OTM.dir/main.cpp.i

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compute_OTM.dir/main.cpp.s"
	cd /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM/main.cpp -o CMakeFiles/compute_OTM.dir/main.cpp.s

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.requires:

.PHONY : src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.requires

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.provides: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.requires
	$(MAKE) -f src/test/compute_OTM/CMakeFiles/compute_OTM.dir/build.make src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.provides.build
.PHONY : src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.provides

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.provides.build: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o


# Object files for target compute_OTM
compute_OTM_OBJECTS = \
"CMakeFiles/compute_OTM.dir/main.cpp.o"

# External object files for target compute_OTM
compute_OTM_EXTERNAL_OBJECTS =

bin/compute_OTM: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o
bin/compute_OTM: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/build.make
bin/compute_OTM: lib/libvorpalib.so.1.3.4
bin/compute_OTM: lib/libgeogram.so.1.3.4
bin/compute_OTM: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/levy/Programming/Vorpaline/trunk/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/compute_OTM"
	cd /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compute_OTM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test/compute_OTM/CMakeFiles/compute_OTM.dir/build: bin/compute_OTM

.PHONY : src/test/compute_OTM/CMakeFiles/compute_OTM.dir/build

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/requires: src/test/compute_OTM/CMakeFiles/compute_OTM.dir/main.cpp.o.requires

.PHONY : src/test/compute_OTM/CMakeFiles/compute_OTM.dir/requires

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/clean:
	cd /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM && $(CMAKE_COMMAND) -P CMakeFiles/compute_OTM.dir/cmake_clean.cmake
.PHONY : src/test/compute_OTM/CMakeFiles/compute_OTM.dir/clean

src/test/compute_OTM/CMakeFiles/compute_OTM.dir/depend:
	cd /home/levy/Programming/Vorpaline/trunk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/levy/Programming/Vorpaline/trunk /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM /home/levy/Programming/Vorpaline/trunk /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM /home/levy/Programming/Vorpaline/trunk/src/test/compute_OTM/CMakeFiles/compute_OTM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/compute_OTM/CMakeFiles/compute_OTM.dir/depend

