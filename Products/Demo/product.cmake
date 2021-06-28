cmake_minimum_required(VERSION 3.5)

set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER xtensa-lx106-elf-gcc)
set(CMAKE_CXX_COMPILER xtensa-lx106-elf-g++)
set(CMAKE_ASM_COMPILER xtensa-lx106-elf-gcc)

add_subdirectory(Apps)
add_subdirectory(Drivers)
add_subdirectory(Platform)
add_subdirectory(Product)