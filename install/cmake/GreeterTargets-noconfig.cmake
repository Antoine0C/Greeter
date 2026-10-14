#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "greeter" for configuration ""
set_property(TARGET greeter APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(greeter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libgreeter.a"
  )

list(APPEND _cmake_import_check_targets greeter )
list(APPEND _cmake_import_check_files_for_greeter "${_IMPORT_PREFIX}/lib/libgreeter.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
