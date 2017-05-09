cmake_minimum_required(VERSION 3.7)
project(bpp)

add_compile_options(-std=c++11)

#include the subdirectory containing our libs
add_subdirectory(ops1)
include_directories(/boost/test/include) #

#indicate the entry point for the executable
add_executable(bpp main.cpp)

# Indicate which libraries to include during the link process.
target_link_libraries(bpp boost_test_framework)

install(TARGETS bpp DESTINATION bin)

#cmake -DCMAKE_INSTALL_PREFIX:PATH=/tmp/foo ..
