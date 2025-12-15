function(add_submodule dir)

find_package(Git REQUIRED)

if(NOT EXISTS ${dir}/CMakeLists.txt)
	execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recrusive ${dir}
	WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
endif()
add_subdirectory(${dir})
endfunction()