cmake_minimum_required(VERSION 3.5)

add_executable(demo demo.c)

target_link_libraries(demo demo_driver)

target_include_directories(demo 
    PRIVATE
    ${CMAKE_SOURCE_DIR}/Drivers/Demo_driver
    )