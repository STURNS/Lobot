cmake_minimum_required(VERSION 3.5)

# toolchain
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER xtensa-lx106-elf-gcc)
set(CMAKE_CXX_COMPILER xtensa-lx106-elf-g++)
set(CMAKE_ASM_COMPILER xtensa-lx106-elf-gcc)

# src
add_subdirectory(${PROJECT_SOURCE_DIR}/Apps/DemoApp)
add_subdirectory(${PROJECT_SOURCE_DIR}/Drivers/Demo_driver)
add_subdirectory(${PROJECT_SOURCE_DIR}/Drivers/Demo_driver2)
add_subdirectory(${PROJECT_SOURCE_DIR}/Platform)
#add_subdirectory(${PROJECT_SOURCE_DIR}/Products/Demo)