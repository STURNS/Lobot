cmake_minimum_required(VERSION 3.5)

add_executable(demo demo.c)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Tools/cmake")
include(LobotCheckPlatform)

target_include_directories(demo PUBLIC 
    ${CMAKE_SOURCE_DIR}/Platform)

target_include_directories(demo PRIVATE 
    ${CMAKE_SOURCE_DIR}/Drivers/Demo_driver)

target_include_directories(demo PRIVATE 
    ${CMAKE_SOURCE_DIR}/Drivers/Demo_driver2)

target_link_libraries(demo demo_driver)

target_link_libraries(demo demo_driver2)