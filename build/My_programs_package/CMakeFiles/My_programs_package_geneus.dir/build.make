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
CMAKE_SOURCE_DIR = /home/ramprakash/My_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ramprakash/My_workspace/build

# Utility rule file for My_programs_package_geneus.

# Include the progress variables for this target.
include My_programs_package/CMakeFiles/My_programs_package_geneus.dir/progress.make

My_programs_package_geneus: My_programs_package/CMakeFiles/My_programs_package_geneus.dir/build.make

.PHONY : My_programs_package_geneus

# Rule to build all files generated by this target.
My_programs_package/CMakeFiles/My_programs_package_geneus.dir/build: My_programs_package_geneus

.PHONY : My_programs_package/CMakeFiles/My_programs_package_geneus.dir/build

My_programs_package/CMakeFiles/My_programs_package_geneus.dir/clean:
	cd /home/ramprakash/My_workspace/build/My_programs_package && $(CMAKE_COMMAND) -P CMakeFiles/My_programs_package_geneus.dir/cmake_clean.cmake
.PHONY : My_programs_package/CMakeFiles/My_programs_package_geneus.dir/clean

My_programs_package/CMakeFiles/My_programs_package_geneus.dir/depend:
	cd /home/ramprakash/My_workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ramprakash/My_workspace/src /home/ramprakash/My_workspace/src/My_programs_package /home/ramprakash/My_workspace/build /home/ramprakash/My_workspace/build/My_programs_package /home/ramprakash/My_workspace/build/My_programs_package/CMakeFiles/My_programs_package_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : My_programs_package/CMakeFiles/My_programs_package_geneus.dir/depend

