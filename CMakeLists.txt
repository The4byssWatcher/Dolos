cmake_minimum_required(VERSION 3.10)
project(Dolos VERSION "0.0.1")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_BINARY_DIR "..")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

file(GLOB SRC "src/*.cpp")
file(GLOB LIB "include/*.h")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
configure_file(include/config.h.in config.h @ONLY)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_executable(dolos main.cpp ${SRC} ${LIB})



