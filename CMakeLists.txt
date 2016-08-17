cmake_minimum_required(VERSION 3.5)
project(template_c_cpp_project)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES src/example.cpp)

#To Export a lib into the project
add_library(ExampleLib ${SOURCE_FILES})

#To Export an Executable
add_executable(ExampleRun ${SOURCE_FILES} boot.cpp)