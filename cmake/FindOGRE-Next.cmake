set(OGRE_NEXT_ROOT "/home/wikkenden/programming/openSrc/ogre3D-next_3.x_DocBuild/ogre-next")
set(OGRE_NEXT_BUILD "${OGRE_NEXT_ROOT}/build")
set(OGRE_NEXT_INSTALL "/home/wikkenden/programming/ogre-next-install")

set(OGRE_INCLUDE_DIRS
   "${OGRE_NEXT_INSTALL}/include"
   "${OGRE_NEXT_INSTALL}/include/OGRE-Next"
   "${OGRE_NEXT_BUILD}/OgreMain/include"
   "${OGRE_NEXT_ROOT}/OgreMain/include"
)

find_library(OGRE_MAIN_LIBRARY
   NAMES OgreNextMain OgreMain
   PATHS
      "${OGRE_NEXT_INSTALL}/lib"
      "${OGRE_NEXT_BUILD}/lib"
      "${OGRE_NEXT_BUILD}/OgreMain"
   NO_DEFAULT_PATH
)

if(OGRE_MAIN_LIBRARY)
   set(OGRE_LIBRARIES ${OGRE_MAIN_LIBRARY})
   message(STATUS "Found OgreNext: ${OGRE_MAIN_LIBRARY}")
else()
   message(FATAL_ERROR "Could not find OgreNextMain library.")
endif()
