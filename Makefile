# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /Users/machnev/Apps/Cmake/Contents/bin/cmake

# The command to remove a file.
RM = /Users/machnev/Apps/Cmake/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/machnev/OpenGLProjects/OpenGL_2_2018-2019

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/machnev/OpenGLProjects/OpenGL_2_2018-2019

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Users/machnev/Apps/Cmake/Contents/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/Users/machnev/Apps/Cmake/Contents/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/machnev/OpenGLProjects/OpenGL_2_2018-2019/CMakeFiles /Users/machnev/OpenGLProjects/OpenGL_2_2018-2019/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/machnev/OpenGLProjects/OpenGL_2_2018-2019/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named OpenGL_2_2018_2019

# Build rule for target.
OpenGL_2_2018_2019: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 OpenGL_2_2018_2019
.PHONY : OpenGL_2_2018_2019

# fast build rule for target.
OpenGL_2_2018_2019/fast:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/build
.PHONY : OpenGL_2_2018_2019/fast

dirLight.o: dirLight.cpp.o

.PHONY : dirLight.o

# target to build an object file
dirLight.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/dirLight.cpp.o
.PHONY : dirLight.cpp.o

dirLight.i: dirLight.cpp.i

.PHONY : dirLight.i

# target to preprocess a source file
dirLight.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/dirLight.cpp.i
.PHONY : dirLight.cpp.i

dirLight.s: dirLight.cpp.s

.PHONY : dirLight.s

# target to generate assembly for a file
dirLight.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/dirLight.cpp.s
.PHONY : dirLight.cpp.s

flyingCamera.o: flyingCamera.cpp.o

.PHONY : flyingCamera.o

# target to build an object file
flyingCamera.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/flyingCamera.cpp.o
.PHONY : flyingCamera.cpp.o

flyingCamera.i: flyingCamera.cpp.i

.PHONY : flyingCamera.i

# target to preprocess a source file
flyingCamera.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/flyingCamera.cpp.i
.PHONY : flyingCamera.cpp.i

flyingCamera.s: flyingCamera.cpp.s

.PHONY : flyingCamera.s

# target to generate assembly for a file
flyingCamera.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/flyingCamera.cpp.s
.PHONY : flyingCamera.cpp.s

glfw_OpenGLApp.o: glfw_OpenGLApp.cpp.o

.PHONY : glfw_OpenGLApp.o

# target to build an object file
glfw_OpenGLApp.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/glfw_OpenGLApp.cpp.o
.PHONY : glfw_OpenGLApp.cpp.o

glfw_OpenGLApp.i: glfw_OpenGLApp.cpp.i

.PHONY : glfw_OpenGLApp.i

# target to preprocess a source file
glfw_OpenGLApp.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/glfw_OpenGLApp.cpp.i
.PHONY : glfw_OpenGLApp.cpp.i

glfw_OpenGLApp.s: glfw_OpenGLApp.cpp.s

.PHONY : glfw_OpenGLApp.s

# target to generate assembly for a file
glfw_OpenGLApp.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/glfw_OpenGLApp.cpp.s
.PHONY : glfw_OpenGLApp.cpp.s

openGLControl.o: openGLControl.cpp.o

.PHONY : openGLControl.o

# target to build an object file
openGLControl.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/openGLControl.cpp.o
.PHONY : openGLControl.cpp.o

openGLControl.i: openGLControl.cpp.i

.PHONY : openGLControl.i

# target to preprocess a source file
openGLControl.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/openGLControl.cpp.i
.PHONY : openGLControl.cpp.i

openGLControl.s: openGLControl.cpp.s

.PHONY : openGLControl.s

# target to generate assembly for a file
openGLControl.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/openGLControl.cpp.s
.PHONY : openGLControl.cpp.s

renderScene.o: renderScene.cpp.o

.PHONY : renderScene.o

# target to build an object file
renderScene.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/renderScene.cpp.o
.PHONY : renderScene.cpp.o

renderScene.i: renderScene.cpp.i

.PHONY : renderScene.i

# target to preprocess a source file
renderScene.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/renderScene.cpp.i
.PHONY : renderScene.cpp.i

renderScene.s: renderScene.cpp.s

.PHONY : renderScene.s

# target to generate assembly for a file
renderScene.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/renderScene.cpp.s
.PHONY : renderScene.cpp.s

shaders.o: shaders.cpp.o

.PHONY : shaders.o

# target to build an object file
shaders.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/shaders.cpp.o
.PHONY : shaders.cpp.o

shaders.i: shaders.cpp.i

.PHONY : shaders.i

# target to preprocess a source file
shaders.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/shaders.cpp.i
.PHONY : shaders.cpp.i

shaders.s: shaders.cpp.s

.PHONY : shaders.s

# target to generate assembly for a file
shaders.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/shaders.cpp.s
.PHONY : shaders.cpp.s

skybox.o: skybox.cpp.o

.PHONY : skybox.o

# target to build an object file
skybox.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/skybox.cpp.o
.PHONY : skybox.cpp.o

skybox.i: skybox.cpp.i

.PHONY : skybox.i

# target to preprocess a source file
skybox.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/skybox.cpp.i
.PHONY : skybox.cpp.i

skybox.s: skybox.cpp.s

.PHONY : skybox.s

# target to generate assembly for a file
skybox.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/skybox.cpp.s
.PHONY : skybox.cpp.s

static_geometry.o: static_geometry.cpp.o

.PHONY : static_geometry.o

# target to build an object file
static_geometry.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/static_geometry.cpp.o
.PHONY : static_geometry.cpp.o

static_geometry.i: static_geometry.cpp.i

.PHONY : static_geometry.i

# target to preprocess a source file
static_geometry.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/static_geometry.cpp.i
.PHONY : static_geometry.cpp.i

static_geometry.s: static_geometry.cpp.s

.PHONY : static_geometry.s

# target to generate assembly for a file
static_geometry.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/static_geometry.cpp.s
.PHONY : static_geometry.cpp.s

texture.o: texture.cpp.o

.PHONY : texture.o

# target to build an object file
texture.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/texture.cpp.o
.PHONY : texture.cpp.o

texture.i: texture.cpp.i

.PHONY : texture.i

# target to preprocess a source file
texture.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/texture.cpp.i
.PHONY : texture.cpp.i

texture.s: texture.cpp.s

.PHONY : texture.s

# target to generate assembly for a file
texture.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/texture.cpp.s
.PHONY : texture.cpp.s

vertexBufferObject.o: vertexBufferObject.cpp.o

.PHONY : vertexBufferObject.o

# target to build an object file
vertexBufferObject.cpp.o:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/vertexBufferObject.cpp.o
.PHONY : vertexBufferObject.cpp.o

vertexBufferObject.i: vertexBufferObject.cpp.i

.PHONY : vertexBufferObject.i

# target to preprocess a source file
vertexBufferObject.cpp.i:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/vertexBufferObject.cpp.i
.PHONY : vertexBufferObject.cpp.i

vertexBufferObject.s: vertexBufferObject.cpp.s

.PHONY : vertexBufferObject.s

# target to generate assembly for a file
vertexBufferObject.cpp.s:
	$(MAKE) -f CMakeFiles/OpenGL_2_2018_2019.dir/build.make CMakeFiles/OpenGL_2_2018_2019.dir/vertexBufferObject.cpp.s
.PHONY : vertexBufferObject.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... OpenGL_2_2018_2019"
	@echo "... dirLight.o"
	@echo "... dirLight.i"
	@echo "... dirLight.s"
	@echo "... flyingCamera.o"
	@echo "... flyingCamera.i"
	@echo "... flyingCamera.s"
	@echo "... glfw_OpenGLApp.o"
	@echo "... glfw_OpenGLApp.i"
	@echo "... glfw_OpenGLApp.s"
	@echo "... openGLControl.o"
	@echo "... openGLControl.i"
	@echo "... openGLControl.s"
	@echo "... renderScene.o"
	@echo "... renderScene.i"
	@echo "... renderScene.s"
	@echo "... shaders.o"
	@echo "... shaders.i"
	@echo "... shaders.s"
	@echo "... skybox.o"
	@echo "... skybox.i"
	@echo "... skybox.s"
	@echo "... static_geometry.o"
	@echo "... static_geometry.i"
	@echo "... static_geometry.s"
	@echo "... texture.o"
	@echo "... texture.i"
	@echo "... texture.s"
	@echo "... vertexBufferObject.o"
	@echo "... vertexBufferObject.i"
	@echo "... vertexBufferObject.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

