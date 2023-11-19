cmake_minimum_required(VERSION 3.1)
project(rimd)

list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
include(libigl)
igl_include(glfw)


# Add your project files
file(GLOB RMSRCFILES ./src/rimd.cpp ./src/mesh.cpp ./src/rimdtomesh.cpp)
add_executable(rimdtomesh_bin ${RMSRCFILES})
target_link_libraries(rimdtomesh_bin igl::core igl::glfw)

file(GLOB MRSRCFILES ./src/rimd.cpp ./src/mesh.cpp ./src/meshtorimd.cpp)
add_executable(meshtorimd_bin ${MRSRCFILES})
target_link_libraries(meshtorimd_bin igl::core igl::glfw)
