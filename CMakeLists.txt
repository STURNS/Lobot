cmake_minimum_required(VERSION 3.5)

project(Lobot LANGUAGES C CXX ASM)

# the executable output path
file(MAKE_DIRECTORY ${PROJECT_SOURCE_DIR}/Output)
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/Output) 

# cmake module
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Tools/cmake")
include(build)


# configurate the project name
# @ __product_name
# option(PRODUCT_NAME "Select A Product In Products Files" Demo)


# specified product
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Products/${PRODUCT_NAME}")
include(product)

Lobot_SetProperty(__product_name ${PRODUCT_NAME})


Lobot_GetProperty(__product_name _name)
message(STATUS "Product : " ${_name} )
if (_name STREQUAL "Demo")
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Products/${_name})
elseif (_name MATCHES "DemoWindows")
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Products/${_name})
elseif (_name MATCHES "Learn")
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Products/${_name})
else ()
    message(STATUS "Product : NO PRODUCT")
endif()
