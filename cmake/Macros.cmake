function(add_submodule dir)

find_package(Git REQUIRED)

set(FULL_PATH ${CMAKE_SOURCE_DIR}/${dir})

if(NOT EXISTS ${FULL_PATH}/CMakeLists.txt)
	message("No submodule was found")
	execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive ${dir}
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})

endif()

if(NOT EXISTS ${FULL_PATH}/CMakeLists.txt)
message("Couldn't find a CMakeLists in submodule")

else()
add_subdirectory(${dir})
endif()

endfunction()