cmake_minimum_required(VERSION 3.5)
project(template_c_cpp_project)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES src/example.cpp)

#To Export a lib into the project
add_library(ExampleLib ${SOURCE_FILES})

#To Export an Executable
add_executable(ExampleRun ${SOURCE_FILES} boot.cpp)


#testing stuff
set(PROJECT_TEST_NAME ${PROJECT_NAME}_tests)
#define a glob for all the test files.
#dictate that all tests are in files name *_test.cpp
file(GLOB TEST_SRC_FILES ${PROJECT_SOURCE_DIR}/src/*_test.cpp)
add_executable(${PROJECT_TEST_NAME} ${TEST_SRC_FILES})

target_link_libraries(${PROJECT_TEST_NAME} gtest gtest_main)
add_test(NAME all_tests COMMAND ${PROJECT_TEST_NAME})