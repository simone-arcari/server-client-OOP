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
include src/server/socket/CMakeFiles/ServerSocket.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/server/socket/CMakeFiles/ServerSocket.dir/compiler_depend.make

# Include the progress variables for this target.
include src/server/socket/CMakeFiles/ServerSocket.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/socket/CMakeFiles/ServerSocket.dir/flags.make

src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o: src/server/socket/CMakeFiles/ServerSocket.dir/flags.make
src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o: /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocket.cpp
src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o: src/server/socket/CMakeFiles/ServerSocket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o -MF CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o.d -o CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o -c /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocket.cpp

src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ServerSocket.dir/ServerSocket.cpp.i"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocket.cpp > CMakeFiles/ServerSocket.dir/ServerSocket.cpp.i

src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ServerSocket.dir/ServerSocket.cpp.s"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocket.cpp -o CMakeFiles/ServerSocket.dir/ServerSocket.cpp.s

src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o: src/server/socket/CMakeFiles/ServerSocket.dir/flags.make
src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o: /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocketForClient.cpp
src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o: src/server/socket/CMakeFiles/ServerSocket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o -MF CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o.d -o CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o -c /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocketForClient.cpp

src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.i"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocketForClient.cpp > CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.i

src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.s"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket/ServerSocketForClient.cpp -o CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.s

# Object files for target ServerSocket
ServerSocket_OBJECTS = \
"CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o" \
"CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o"

# External object files for target ServerSocket
ServerSocket_EXTERNAL_OBJECTS =

src/server/socket/libServerSocket.a: src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocket.cpp.o
src/server/socket/libServerSocket.a: src/server/socket/CMakeFiles/ServerSocket.dir/ServerSocketForClient.cpp.o
src/server/socket/libServerSocket.a: src/server/socket/CMakeFiles/ServerSocket.dir/build.make
src/server/socket/libServerSocket.a: src/server/socket/CMakeFiles/ServerSocket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/simonearcari/Documents/GitHub/server-client-OOP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libServerSocket.a"
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && $(CMAKE_COMMAND) -P CMakeFiles/ServerSocket.dir/cmake_clean_target.cmake
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ServerSocket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/socket/CMakeFiles/ServerSocket.dir/build: src/server/socket/libServerSocket.a
.PHONY : src/server/socket/CMakeFiles/ServerSocket.dir/build

src/server/socket/CMakeFiles/ServerSocket.dir/clean:
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket && $(CMAKE_COMMAND) -P CMakeFiles/ServerSocket.dir/cmake_clean.cmake
.PHONY : src/server/socket/CMakeFiles/ServerSocket.dir/clean

src/server/socket/CMakeFiles/ServerSocket.dir/depend:
	cd /Users/simonearcari/Documents/GitHub/server-client-OOP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/simonearcari/Documents/GitHub/server-client-OOP /Users/simonearcari/Documents/GitHub/server-client-OOP/src/server/socket /Users/simonearcari/Documents/GitHub/server-client-OOP/build /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket /Users/simonearcari/Documents/GitHub/server-client-OOP/build/src/server/socket/CMakeFiles/ServerSocket.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/server/socket/CMakeFiles/ServerSocket.dir/depend

