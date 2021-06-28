cmake_minimum_required(VERSION 3.5)
add_library(demo_driver2
        OBJECT
        demo_driver2.h
        demo_driver2.c
    )

# NOTE: 可能在某些平台和/或使用较老的编译器上， 需要显式地为目标设
set_target_properties(demo_driver2
        PROPERTIES
        POSITION_INDEPENDENT_CODE 1
    )