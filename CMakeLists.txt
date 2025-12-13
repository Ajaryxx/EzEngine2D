cmake_minimum_required(VERSION 3.31.6)

project(EzEngine2D
VERSION 0.0.1
LANGUAGES C CXX)

#set cmake variables
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/test/bin")
#list(APPEND CMAKE_PREFIX_PATH "C:/Libraries/SDL3")

#project variables
set(EzEngine2D_LIB "EzEngine2D")
option(BUILD_SHARED_LIBS "Building shared or static" OFF)
set(SDL3_PATH "C:/Libraries/SDL3")
set(GLM_PATH "C:/Libraries/glm")


#options
option(DoFetchContent "Fetching for all libraries" OFF)

find_package(OpenGL REQUIRED)

if(DoFetchContent)
include(FetchContent)

#SDL
FetchContent_Declare(
	SDL3
	GIT_REPOSITORY https://github.com/libsdl-org/SDL
	GIT_TAG release-3.2.28
	GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(SDL3)

#GLM
FetchContent_Declare(
	GLM
	GIT_REPOSITORY https://github.com/g-truc/glm
	GIT_TAG 1.0.2
	GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(GLM)

else()
#search
list(APPEND CMAKE_PREFIX_PATH ${SDL3_PATH})

find_package(OpenGL REQUIRED)
find_package(SDL3 REQUIRED CONFIG)

add_library(glm INTERFACE)
target_include_directories(glm INTERFACE ${GLM_PATH})


endif()

if(BUILD_SHARED_LIBS)

else()



endif()



add_subdirectory(test)

