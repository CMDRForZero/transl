# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/trans/10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/trans/10/buildfolder

# Utility rule file for antlr4_runtime.

# Include any custom commands dependencies for this target.
include CMakeFiles/antlr4_runtime.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/antlr4_runtime.dir/progress.make

CMakeFiles/antlr4_runtime: CMakeFiles/antlr4_runtime-complete

CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-install
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-mkdir
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-download
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-patch
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-build
CMakeFiles/antlr4_runtime-complete: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'antlr4_runtime'"
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/CMakeFiles
	/usr/bin/cmake -E touch /root/trans/10/buildfolder/CMakeFiles/antlr4_runtime-complete
	/usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-done

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update:
.PHONY : antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-build: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'antlr4_runtime'"
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp && /usr/bin/cmake -E echo_append
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp && /usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-build

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure: antlr4_runtime/tmp/antlr4_runtime-cfgcmd.txt
antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure: antlr4_runtime/tmp/antlr4_runtime-cache-Debug.cmake
antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'antlr4_runtime'"
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp && /usr/bin/cmake "-GUnix Makefiles" -C/root/trans/10/buildfolder/antlr4_runtime/tmp/antlr4_runtime-cache-Debug.cmake /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp && /usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-download: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-gitinfo.txt
antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-download: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'antlr4_runtime'"
	cd /root/trans/10/buildfolder/antlr4_runtime/src && /usr/bin/cmake -P /root/trans/10/buildfolder/antlr4_runtime/tmp/antlr4_runtime-gitclone.cmake
	cd /root/trans/10/buildfolder/antlr4_runtime/src && /usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-download

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-install: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'antlr4_runtime'"
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp && /usr/bin/cmake -E echo_append
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp && /usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-install

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'antlr4_runtime'"
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime/runtime/Cpp
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/antlr4_runtime
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/antlr4_runtime/tmp
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder
	/usr/bin/cmake -E make_directory /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp
	/usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-mkdir

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-patch: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'antlr4_runtime'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-patch

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update:
.PHONY : antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update

antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing update step for 'antlr4_runtime'"
	cd /root/trans/10/buildfolder/antlr4_runtime/src/antlr4_runtime && /usr/bin/cmake -P /root/trans/10/buildfolder/antlr4_runtime/tmp/antlr4_runtime-gitupdate.cmake

antlr4_runtime: CMakeFiles/antlr4_runtime
antlr4_runtime: CMakeFiles/antlr4_runtime-complete
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-build
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-configure
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-download
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-install
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-mkdir
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-patch
antlr4_runtime: antlr4_runtime/src/antlr4_runtime-stamp/antlr4_runtime-update
antlr4_runtime: CMakeFiles/antlr4_runtime.dir/build.make
.PHONY : antlr4_runtime

# Rule to build all files generated by this target.
CMakeFiles/antlr4_runtime.dir/build: antlr4_runtime
.PHONY : CMakeFiles/antlr4_runtime.dir/build

CMakeFiles/antlr4_runtime.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/antlr4_runtime.dir/cmake_clean.cmake
.PHONY : CMakeFiles/antlr4_runtime.dir/clean

CMakeFiles/antlr4_runtime.dir/depend:
	cd /root/trans/10/buildfolder && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/trans/10 /root/trans/10 /root/trans/10/buildfolder /root/trans/10/buildfolder /root/trans/10/buildfolder/CMakeFiles/antlr4_runtime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/antlr4_runtime.dir/depend

