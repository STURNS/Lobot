cmake_minimum_required(VERSION 3.5)

get_property(_name GLOBAL PROPERTY __product_name)

if (_name MATCHES "Demo")
    add_subdirectory(Demo)
    message(STATUS "Product : Demo")
endif()