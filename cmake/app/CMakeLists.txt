cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

SET(sampleName main)

find_package(Boost REQUIRED unit_test_framework)
include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})
add_definitions(${Boost_DEFINITIONS})

file(GLOB main_SRC
    "*.h"
    "*.cpp"
)

add_executable (main ${main_SRC})

target_link_libraries (main ${Boost_LIBRARIES})
