cmake_minimum_required(VERSION 3.13)
project(OpenGL_2_2018_2019)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(data)
include_directories(data/shaders)
include_directories(data/skyboxes)
include_directories(data/textures)

add_executable(OpenGL_2_2018_2019
        data/shaders/color.frag
        data/shaders/color.vert
        data/shaders/dirLight.frag
        data/shaders/main_shader.frag
        data/shaders/main_shader.vert
        data/skyboxes/jajlands1/jajlands1_bk.jpg
        data/skyboxes/jajlands1/jajlands1_dn.jpg
        data/skyboxes/jajlands1/jajlands1_ft.jpg
        data/skyboxes/jajlands1/jajlands1_lf.jpg
        data/skyboxes/jajlands1/jajlands1_rt.jpg
        data/skyboxes/jajlands1/jajlands1_up.jpg
        data/textures/box.jpg
        data/textures/grass.png
        data/textures/ground.jpg
        data/textures/met_wall01a.jpg
        data/textures/tower.jpg
        common_header.h
        dirLight.cpp
        dirLight.h
        flyingCamera.cpp
        flyingCamera.h
        openGLControl.cpp
        openGLControl.h
        renderScene.cpp
        shaders.cpp
        shaders.h
        skybox.cpp
        skybox.h
        static_geometry.cpp
        static_geometry.h
        texture.cpp
        texture.h
        vertexBufferObject.cpp
        vertexBufferObject.h
        glfw_OpenGLApp.cpp
        glfw_OpenGLApp.h
        main.cpp)

if(APPLE)
    set(CMAKE_SHARED_LIBRARY_CREATE_C_FLAGS "${CMAKE_SHARED_LIBRARY_CREATE_C_FLAGS} -undefined dynamic_lookup")
endif(APPLE)

target_include_directories(OpenGL_2_2018_2019 PUBLIC /Libs/FreeImage>)
target_link_directories(OpenGL_2_2018_2019 PUBLIC Libs/FreeImage)

find_library(COCOA_LIBRARY Cocoa)
target_link_libraries(OpenGL_2_2018_2019 ${COCOA_LIBRARY})

find_library(OPENGL_LIBRARY OpenGL)
target_link_libraries(OpenGL_2_2018_2019 ${OPENGL_LIBRARY})

find_library(IOKIT_LIBRARY IOKit)
target_link_libraries(OpenGL_2_2018_2019 ${IOKIT_LIBRARY})

find_library(CORE_VIDEO_LIBRARY CoreVideo)
target_link_libraries(OpenGL_2_2018_2019 ${CORE_VIDEO_LIBRARY})

find_library(GLFW_LIBRARY GLFW3)
target_link_libraries(OpenGL_2_2018_2019 ${GLFW_LIBRARY})

find_library(FREE_IMAGE_LIBRARY FreeImage)
target_link_libraries(OpenGL_2_2018_2019 ${FREE_IMAGE_LIBRARY})

find_package(GLEW 2.1 REQUIRED)
find_package(glm REQUIRED)

target_include_directories(OpenGL_2_2018_2019 PUBLIC ${GLEW_INCLUDE_DIRS})
target_link_libraries(OpenGL_2_2018_2019 ${GLEW_LIBRARIES})

target_include_directories(OpenGL_2_2018_2019 PUBLIC ${GLM_INCLUDE_DIR})
target_link_libraries(OpenGL_2_2018_2019 ${GLM_LIBRARY})
