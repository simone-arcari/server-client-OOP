# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/simonearcari/Documents/GitHub/server-client-OOP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/simonearcari/Documents/GitHub/server-client-OOP/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/Server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/server/CMakeFiles/Server.dir/compiler_depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/Server.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/Server.dir/flags.make

src/server/CMakeFiles/Server.dir/Server.cpp.o: src/server/CMakeFiles/Server.dir/flags.make
src/server/CMakeFiles/Server.dir/Server.cpp.o: /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/Server.cpp
src/server/CMakeFiles/Server.dir/Server.cpp.o: src/server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/Server.dir/Server.cpp.o"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Server.dir/Server.cpp.o -MF CMakeFiles/Server.dir/Server.cpp.o.d -o CMakeFiles/Server.dir/Server.cpp.o -c /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/Server.cpp

src/server/CMakeFiles/Server.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Server.dir/Server.cpp.i"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/Server.cpp > CMakeFiles/Server.dir/Server.cpp.i

src/server/CMakeFiles/Server.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Server.dir/Server.cpp.s"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/Server.cpp -o CMakeFiles/Server.dir/Server.cpp.s

src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.o: src/server/CMakeFiles/Server.dir/flags.make
src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.o: /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/ClientManagerThread.cpp
src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.o: src/server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.o"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.o -MF CMakeFiles/Server.dir/ClientManagerThread.cpp.o.d -o CMakeFiles/Server.dir/ClientManagerThread.cpp.o -c /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/ClientManagerThread.cpp

src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Server.dir/ClientManagerThread.cpp.i"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/ClientManagerThread.cpp > CMakeFiles/Server.dir/ClientManagerThread.cpp.i

src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Server.dir/ClientManagerThread.cpp.s"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/ClientManagerThread.cpp -o CMakeFiles/Server.dir/ClientManagerThread.cpp.s

src/server/CMakeFiles/Server.dir/CommandManager.cpp.o: src/server/CMakeFiles/Server.dir/flags.make
src/server/CMakeFiles/Server.dir/CommandManager.cpp.o: /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/CommandManager.cpp
src/server/CMakeFiles/Server.dir/CommandManager.cpp.o: src/server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/Server.dir/CommandManager.cpp.o"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Server.dir/CommandManager.cpp.o -MF CMakeFiles/Server.dir/CommandManager.cpp.o.d -o CMakeFiles/Server.dir/CommandManager.cpp.o -c /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/CommandManager.cpp

src/server/CMakeFiles/Server.dir/CommandManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Server.dir/CommandManager.cpp.i"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/CommandManager.cpp > CMakeFiles/Server.dir/CommandManager.cpp.i

src/server/CMakeFiles/Server.dir/CommandManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Server.dir/CommandManager.cpp.s"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/CommandManager.cpp -o CMakeFiles/Server.dir/CommandManager.cpp.s

# Object files for target Server
Server_OBJECTS = \
"CMakeFiles/Server.dir/Server.cpp.o" \
"CMakeFiles/Server.dir/ClientManagerThread.cpp.o" \
"CMakeFiles/Server.dir/CommandManager.cpp.o"

# External object files for target Server
Server_EXTERNAL_OBJECTS =

src/server/libServer.a: src/server/CMakeFiles/Server.dir/Server.cpp.o
src/server/libServer.a: src/server/CMakeFiles/Server.dir/ClientManagerThread.cpp.o
src/server/libServer.a: src/server/CMakeFiles/Server.dir/CommandManager.cpp.o
src/server/libServer.a: src/server/CMakeFiles/Server.dir/build.make
src/server/libServer.a: src/server/CMakeFiles/Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libServer.a"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/Server.dir/cmake_clean_target.cmake
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/Server.dir/build: src/server/libServer.a
.PHONY : src/server/CMakeFiles/Server.dir/build

src/server/CMakeFiles/Server.dir/clean:
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/Server.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/Server.dir/clean

src/server/CMakeFiles/Server.dir/depend:
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/simonearcari/Documents/GitHub/server-client-OOP /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server /Users/simonearcari/Documents/GitHub/server-client-OOP/build /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/CMakeFiles/Server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/server/CMakeFiles/Server.dir/depend
