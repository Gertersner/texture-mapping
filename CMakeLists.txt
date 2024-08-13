cmake_minimum_required(VERSION 3.17)
project(assignment06)



link_libraries(cs4722  glfw3 opengl32 glu32)

set(CMAKE_CXX_STANDARD 20)

include_directories(C:/cs4722lib/include cs4722lib/include)
link_directories(C:/cs4722lib cs4722lib)

add_executable(assign06 temple.cpp)
