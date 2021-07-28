cmake_minimum_required(VERSION 3.5)

project(Lobot LANGUAGES C CXX ASM)
#add_subdirectory(Apps)


#常用变量
message(STATUS CMAKE_BINARY_DIR:${CMAKE_BINARY_DIR}) #in source 编译,指得就是工程顶层目录
message(STATUS PROJECT_BINARY_DIR:${PROJECT_BINARY_DIR}) #out-of-source 编译,指的是工程编译发生的目录
message(STATUS Lobot_BINARY_DIR:${Lobot_BINARY_DIR}) #

# 工程顶层目录
message(STATUS CMAKE_SOURCE_DIR:${CMAKE_SOURCE_DIR})
message(STATUS PROJECT_SOURCE_DIR:${PROJECT_SOURCE_DIR})
message(STATUS Lobot_SOURCE_DIR:${${PROJECT_NAME}_SOURCE_DIR})

# 当前处理的 CMakeLists.txt 所在的路径
message(STATUS CMAKE_CURRENT_SOURCE_DIR:${CMAKE_CURRENT_SOURCE_DIR})

# 如果是 in-source 编译,它跟 CMAKE_CURRENT_SOURCE_DIR 一致,如果是 out-of-source 编译,他指的是 target 编译目录
# ADD_SUBDIRECTORY(src bin)可以更改这个变量的值
message(STATUS CMAKE_CURRRENT_BINARY_DIR:${CMAKE_CURRRENT_BINARY_DIR})
message(STATUS CMAKE_CURRRENT_BINARY_DIR:${CMAKE_CURRRENT_BINARY_DIR})
message(STATUS after add sub, CMAKE_CURRRENT_BINARY_DIR:${CMAKE_CURRRENT_BINARY_DIR})

# CMakeLists.txt 的完整路径
message(STATUS CMAKE_CURRENT_LIST_FILE:${CMAKE_CURRENT_LIST_FILE})

# 输出这个变量所在的行
message(STATUS CMAKE_CURRENT_LIST_FILE:${CMAKE_CURRENT_LIST_LINE})

# 变量
set(USE_LIBRARY ON)
message(STATUS "Compile sources into a library? ${USE_LIBRARY}")

# list
list(APPEND __source demo_driver.c demo_driver.h)
message(STATUS "__source ${__source}")

# if else

if (USE_LIBRARY)
    message(STATUS USE_LIBRARY IS - ${USE_LIBRARY})
else ()
    message(STATUS USE_LIBRARY IS - ${USE_LIBRARY})
endif()

# 选项cmake .. -G "MinGW Makefiles" -D USE_LIBRARY2=OFF
option(USE_LIBRARY2 "Compile sources into a library" OFF)
if (USE_LIBRARY2 EQUAL ON)
    message(STATUS USE_LIBRARY2 IS - ${USE_LIBRARY2})
else ()
    message(STATUS USE_LIBRARY2 IS - ${USE_LIBRARY2})
endif()

#set(CMAKE_C_COMPILER xtensa-lx106-elf-gcc)
#set(CMAKE_CXX_COMPILER xtensa-lx106-elf-g++)
#set(CMAKE_ASM_COMPILER xtensa-lx106-elf-gcc)

if (PRODUCT_NAME MATCHES "Demo")
    message(STATUS ${PRODUCT_NAME})
endif()

list(APPEND test_list "123")
list(APPEND test_list "abc")
foreach(str IN LISTS test_list )
   message(STATUS "str is ${str}") 
endforeach()


# 2.1 检测操作系统
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    message(STATUS "Configuring on/for Linux")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    message(STATUS "Configuring on/for macOS")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    message(STATUS "Configuring on/for Windows")
elseif(CMAKE_SYSTEM_NAME STREQUAL "AIX")
    message(STATUS "Configuring on/for IBM AIX")
else()
    message(STATUS "Configuring on/for ${CMAKE_SYSTEM_NAME}")
endif()

# 编译器预处理
# add_definitions
# target_compile_definitions(hello-world PUBLIC "IS_LINUX")

# 编译器相关
if(CMAKE_C_COMPILER_ID MATCHES Intel)
    message(STATUS "IS_INTEL_CXX_COMPILER")
endif()
if(CMAKE_C_COMPILER_ID MATCHES GNU)
    message(STATUS "IS_GNU_CXX_COMPILER")
endif()
if(CMAKE_C_COMPILER_ID MATCHES PGI)
    message(STATUS "IS_PGI_CXX_COMPILER")
endif()
if(CMAKE_C_COMPILER_ID MATCHES XL)
    message(STATUS "IS_XL_CXX_COMPILER")
endif()

# 检查架构
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    message(STATUS "Target is 64 bits")
else()
    message(STATUS "Target is 32 bits")
endif()

if(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "i386")
    message(STATUS "i386 architecture detected")
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "i686")
    message(STATUS "i686 architecture detected")
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "x86_64")
    message(STATUS "x86_64 architecture detected")
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "AMD64")
    message(STATUS "AMD64 architecture detected")
else()
    message(STATUS "host processor architecture is unknown")
endif()

add_custom_target(Learn_target 
    COMMAND ECHO "this is add_custom_target"
    COMMENT "this is add_custom_target"
)

set_property(TARGET Learn_target APPEND PROPERTY learn_property "learn_property val")
message(STATUS "Learn_target:COMMENT" ${Learn_target})

