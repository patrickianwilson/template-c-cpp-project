cmake_minimum_required(VERSION 3.5)
project(template_c_cpp_project)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_subdirectory(lib/googletest-master/googletest)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

enable_testing()

set(PROJECT_TEST_NAME ${PROJECT_NAME}_tests)
include_directories(${gtest_INCLUDE_DIRS} ${COMMON_INCLUDES})

#define a glob for all the test files.
#dictate that all tests are in files name *_test.cpp
file(GLOB TEST_SRC_FILES ${PROJECT_SOURCE_DIR}/*_test.cpp)
add_executable(${PROJECT_TEST_NAME} ${TEST_SRC_FILES})
target_link_libraries(${PROJECT_TEST_NAME} gtest gtest_main)
add_test(NAME all_tests COMMAND ${PROJECT_TEST_NAME})







