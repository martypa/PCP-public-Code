# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\dev\source\PCP-public-Code\C\C-stack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\dev\source\PCP-public-Code\C\C-stack\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles\stack.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\stack.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\stack.dir\flags.make

CMakeFiles\stack.dir\stack.c.obj: CMakeFiles\stack.dir\flags.make
CMakeFiles\stack.dir\stack.c.obj: ..\stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\source\PCP-public-Code\C\C-stack\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/stack.dir/stack.c.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\stack.dir\stack.c.obj /FdCMakeFiles\stack.dir\stack.pdb /FS -c C:\dev\source\PCP-public-Code\C\C-stack\stack.c
<<

CMakeFiles\stack.dir\stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stack.dir/stack.c.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\stack.dir\stack.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\dev\source\PCP-public-Code\C\C-stack\stack.c
<<

CMakeFiles\stack.dir\stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stack.dir/stack.c.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\stack.dir\stack.c.s /c C:\dev\source\PCP-public-Code\C\C-stack\stack.c
<<

# Object files for target stack
stack_OBJECTS = \
"CMakeFiles\stack.dir\stack.c.obj"

# External object files for target stack
stack_EXTERNAL_OBJECTS =

stack.lib: CMakeFiles\stack.dir\stack.c.obj
stack.lib: CMakeFiles\stack.dir\build.make
stack.lib: CMakeFiles\stack.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\dev\source\PCP-public-Code\C\C-stack\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library stack.lib"
	$(CMAKE_COMMAND) -P CMakeFiles\stack.dir\cmake_clean_target.cmake
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /lib /nologo /machine:X86 /out:stack.lib @CMakeFiles\stack.dir\objects1.rsp 

# Rule to build all files generated by this target.
CMakeFiles\stack.dir\build: stack.lib

.PHONY : CMakeFiles\stack.dir\build

CMakeFiles\stack.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\stack.dir\cmake_clean.cmake
.PHONY : CMakeFiles\stack.dir\clean

CMakeFiles\stack.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\dev\source\PCP-public-Code\C\C-stack C:\dev\source\PCP-public-Code\C\C-stack C:\dev\source\PCP-public-Code\C\C-stack\cmake-build-release C:\dev\source\PCP-public-Code\C\C-stack\cmake-build-release C:\dev\source\PCP-public-Code\C\C-stack\cmake-build-release\CMakeFiles\stack.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\stack.dir\depend

