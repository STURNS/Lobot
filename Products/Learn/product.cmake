cmake_minimum_required(VERSION 3.5)

# toolchain
#set(CMAKE_SYSTEM_NAME Windows)
#set(CMAKE_C_COMPILER C:/Qt/Qt5.9.0/Tools/mingw530_32/bin/gcc.exe)
#set(CMAKE_CXX_COMPILER C:/Qt/Qt5.9.0/Tools/mingw530_32/bin/g++.exe)
#set(CMAKE_ASM_COMPILER C:/Qt/Qt5.9.0/Tools/mingw530_32/bin/gcc.exe)


# src
add_subdirectory(${PROJECT_SOURCE_DIR}/Apps/Demo)
add_subdirectory(${PROJECT_SOURCE_DIR}/Drivers/Demo_driver)
add_subdirectory(${PROJECT_SOURCE_DIR}/Drivers/Demo_driver2)
add_subdirectory(${PROJECT_SOURCE_DIR}/Platform)
#add_subdirectory(${PROJECT_SOURCE_DIR}/Products/Learn)