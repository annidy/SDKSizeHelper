cmake_minimum_required(VERSION 2.8)
project(dummylib C CXX)

# Source files
set(SOURCES
  dummy.mm
)

# Headers
set(HEADERS
)

set(CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET "8.0")

add_library(dummy STATIC ${SOURCES} ${HEADERS})


# Debug symbols set in XCode project
set_xcode_property(dummy GCC_GENERATE_DEBUGGING_SYMBOLS YES "All")

# Installation
set(CMAKE_INSTALL_PREFIX ".")
install (TARGETS dummy DESTINATION lib)
install (FILES ${HEADERS} DESTINATION include)
