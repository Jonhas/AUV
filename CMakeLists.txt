cmake_minimum_required(VERSION 3.18)
PROJECT(AUV)
set(CMAKE_CXX_STANDARD 20)
find_package(OpenCV REQUIRED PATHS /opt/opencv/build/ NO_DEFAULT_PATH)
find_package(SDL2 REQUIRED)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

include(FindPkgConfig)

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

add_executable(${PROJECT_NAME} SLAM/src/main.cpp )

pkg_search_module(SDL2 REQUIRED sdl2)

include_directories( ${OpenCV_INCLUDE_DIRS})
include_directories(${SDL2_INCLUDE_DIRS})
target_include_directories(${PROJECT_NAME} PRIVATE SLAM/include)
target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})
target_link_libraries(${PROJECT_NAME} ${SDL2_LIBRARIES}) 
target_link_libraries(${PROJECT_NAME} SDL2_image)