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

# Include any dependencies generated for this target.
include CMakeFiles/demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo.dir/flags.make

antlr4cpp_generated_src/Grammar/GrammarLexer.interp: ../Grammar.g4
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Grammar with ANTLR 4.11.1"
	cd /root/trans/10 && /usr/bin/java -jar /root/trans/10/antlr-4.11.1-complete.jar Grammar.g4 -o /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar -no-listener -Dlanguage=Cpp -listener -visitor

antlr4cpp_generated_src/Grammar/GrammarLexer.tokens: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarLexer.tokens

antlr4cpp_generated_src/Grammar/GrammarLexer.h: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarLexer.h

antlr4cpp_generated_src/Grammar/GrammarLexer.cpp: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarLexer.cpp

antlr4cpp_generated_src/Grammar/GrammarParser.h: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarParser.h

antlr4cpp_generated_src/Grammar/GrammarParser.cpp: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarParser.cpp

antlr4cpp_generated_src/Grammar/GrammarBaseListener.h: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarBaseListener.h

antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp

antlr4cpp_generated_src/Grammar/GrammarListener.h: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarListener.h

antlr4cpp_generated_src/Grammar/GrammarListener.cpp: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarListener.cpp

antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.h: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.h

antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp

antlr4cpp_generated_src/Grammar/GrammarVisitor.h: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarVisitor.h

antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
	@$(CMAKE_COMMAND) -E touch_nocreate antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp

CMakeFiles/demo.dir/main.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/main.cpp.o: ../main.cpp
CMakeFiles/demo.dir/main.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/demo.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/main.cpp.o -MF CMakeFiles/demo.dir/main.cpp.o.d -o CMakeFiles/demo.dir/main.cpp.o -c /root/trans/10/main.cpp

CMakeFiles/demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/main.cpp > CMakeFiles/demo.dir/main.cpp.i

CMakeFiles/demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/main.cpp -o CMakeFiles/demo.dir/main.cpp.s

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o: antlr4cpp_generated_src/Grammar/GrammarLexer.cpp
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o -MF CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o.d -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o -c /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp > CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.i

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.s

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o: antlr4cpp_generated_src/Grammar/GrammarParser.cpp
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o -MF CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o.d -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o -c /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarParser.cpp

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarParser.cpp > CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.i

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarParser.cpp -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.s

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o: antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o -MF CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o.d -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o -c /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp > CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.i

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.s

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o: antlr4cpp_generated_src/Grammar/GrammarListener.cpp
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o -MF CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o.d -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o -c /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarListener.cpp

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarListener.cpp > CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.i

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarListener.cpp -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.s

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o: antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o -MF CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o.d -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o -c /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp > CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.i

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.s

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o: antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp
CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o -MF CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o.d -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o -c /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp > CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.i

CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/trans/10/buildfolder/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp -o CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.s

# Object files for target demo
demo_OBJECTS = \
"CMakeFiles/demo.dir/main.cpp.o" \
"CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o" \
"CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o" \
"CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o" \
"CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o" \
"CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o" \
"CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o"

# External object files for target demo
demo_EXTERNAL_OBJECTS =

demo: CMakeFiles/demo.dir/main.cpp.o
demo: CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarLexer.cpp.o
demo: CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarParser.cpp.o
demo: CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp.o
demo: CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarListener.cpp.o
demo: CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp.o
demo: CMakeFiles/demo.dir/antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp.o
demo: CMakeFiles/demo.dir/build.make
demo: antlr4_runtime/src/antlr4_runtime/runtime/Cpp/dist/libantlr4-runtime.a
demo: CMakeFiles/demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/trans/10/buildfolder/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo.dir/build: demo
.PHONY : CMakeFiles/demo.dir/build

CMakeFiles/demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo.dir/clean

CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarBaseListener.cpp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarBaseListener.h
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.cpp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarBaseVisitor.h
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarLexer.cpp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarLexer.h
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarLexer.interp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarLexer.tokens
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarListener.cpp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarListener.h
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarParser.cpp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarParser.h
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarVisitor.cpp
CMakeFiles/demo.dir/depend: antlr4cpp_generated_src/Grammar/GrammarVisitor.h
	cd /root/trans/10/buildfolder && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/trans/10 /root/trans/10 /root/trans/10/buildfolder /root/trans/10/buildfolder /root/trans/10/buildfolder/CMakeFiles/demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo.dir/depend

