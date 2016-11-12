cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

SET(sampleName MyApp)

find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})
add_definitions(${Boost_DEFINITIONS})

add_executable (MyApp main.cpp)

target_link_libraries (MyApp ${Boost_LIBRARIES})
