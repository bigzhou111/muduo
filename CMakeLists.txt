cmake_minimum_required(VERSION 2.8)
project(muduo)

set(CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(BOOST_ROOT "/usr/local/include/boost")
#添加头文件搜索路径
include_directories(/usr/local/include, ./base)
#添加库文件搜索路径
link_directories(/usr/local/lib)

add_executable(muduo main.cpp)

