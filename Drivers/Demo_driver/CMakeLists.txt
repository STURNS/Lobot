cmake_minimum_required(VERSION 3.5)

add_library(demo_driver
        STATIC
        demo_driver.h
        demo_driver.c
    )

target_include_directories(demo_driver PUBLIC 
    ${CMAKE_SOURCE_DIR}/Platform)

