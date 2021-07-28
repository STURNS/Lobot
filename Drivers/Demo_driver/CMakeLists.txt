cmake_minimum_required(VERSION 3.5)

aux_source_directory(. DIR_SRCS)

add_library(demo_driver
        STATIC
        ${DIR_SRCS}
    )

target_include_directories(demo_driver PUBLIC 
    ${CMAKE_SOURCE_DIR}/Platform)

