cmake_minimum_required(VERSION 3.31.6)

project(EzEngine2D
VERSION 0.0.1
LANGUAGES C CXX)

#set cmake variables
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/test/bin")




#project variables
set(EzEngine2D_LIB "EzEngine2D")
set(CMAKE_DIR "${CMAKE_CURRENT_LIST_DIR}/cmake")
set(EXTERN_DIR "${CMAKE_CURRENT_LIST_DIR}/extern")

#options
option(BUILD_SHARED_LIBS "Building shared or static" OFF)

if("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows")
set(OS_WINDOWS 1)
elseif("${CMAKE_SYSTEM_NAME}" STREQUAL "LINUX")
set(OS_LINUX 1)
endif()

include(${CMAKE_DIR}/Macros.cmake)


add_subdirectory(test)
