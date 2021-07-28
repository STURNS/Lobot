cmake_minimum_required(VERSION 3.5)

add_executable(demoapp demo.c)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Tools/cmake")
include(LobotCheckPlatform)

target_include_directories(demoapp PUBLIC 
    ${CMAKE_SOURCE_DIR}/Platform)

target_include_directories(demoapp PRIVATE 
    ${CMAKE_SOURCE_DIR}/Drivers/Demo_driver)

target_include_directories(demoapp PRIVATE 
    ${CMAKE_SOURCE_DIR}/Drivers/Demo_driver2)

target_link_libraries(demoapp demo_driver)

target_link_libraries(demoapp demo_driver2)