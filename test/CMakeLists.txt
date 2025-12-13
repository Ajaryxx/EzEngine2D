set(Test_EXE "Test")


add_executable(${Test_EXE} "main.cpp")
target_link_libraries(${Test_EXE} PRIVATE SDL3::SDL3 OpenGL::GL glm)
