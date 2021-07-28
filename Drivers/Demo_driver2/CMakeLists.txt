cmake_minimum_required(VERSION 3.5)

add_library(demo_driver2
        OBJECT
        demo_driver2.h
        demo_driver2.c
    )

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Tools/cmake")
include(LobotCheckPlatform)

target_include_directories(demo_driver2 PUBLIC 
    ${CMAKE_SOURCE_DIR}/Platform)

# NOTE: 可能在某些平台和/或使用较老的编译器上， 需要显式地为目标设
set_target_properties(demo_driver2
        PROPERTIES
        POSITION_INDEPENDENT_CODE 1
    )