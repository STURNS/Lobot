cmake_minimum_required(VERSION 3.5)

project(Lobot LANGUAGES C CXX ASM)

# the executable output path
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/Output) 

# cmake module
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Tools/cmake")
include(build)

# configurate the project name
# @ __product_name
option(PRODUCT_NAME "Select aA Product In Products Files" Demo)
set_property(GLOBAL APPEND PROPERTY __product_name ${PRODUCT_NAME})

# specified product
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Products/${PRODUCT_NAME}")
include(product)