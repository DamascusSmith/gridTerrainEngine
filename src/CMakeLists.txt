set_target_properties(GridTerrainEngine PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

add_executable(GridTerrainEngine
   main.cpp
)

# Include directories (might be optional if OGRE handles it)
target_include_directories(GridTerrainEngine
   PRIVATE
      ${OGRE_INCLUDE_DIRS}
)


target_link_libraries(GridTerrainEngine
   PRIVATE
      ${OGRE_LIBRARIES}
)
#Might need a connection to OGRE here
