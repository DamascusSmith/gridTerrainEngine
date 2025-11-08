cmake_minimum_required(VERSION 3.23)
project(GridTerrainEngine)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
find_package(OGRE-Next REQUIRED)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

add_subdirectory(/build/src)

target_include_directories(GridTerrainEngine PRIVATE ${OGRE_INCLUDE_DIRS})
target_link_libraries(GridTerrainEngine PRIVATE ${OGRE_LIBRARIES})

