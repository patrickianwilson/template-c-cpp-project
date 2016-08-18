cmake_minimum_required(VERSION 3.5)
project(template_c_cpp_project)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
add_subdirectory(lib/googletest-master/googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

enable_testing()

include_directories(${gtest_INCLUDE_DIRS} ${COMMON_INCLUDES})







