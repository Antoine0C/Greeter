cmake_minimum_required(VERSION 3.16)

# set the project name
project(Greeter LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDAARD_REQUIRED ON)

configure_file(cmake/greeter_config.h.in greeter_config.h)

# Libs
add_subdirectory(src/greeter)

# -DGREETER_BUILD_APPS=OFF
option(GREETER_BUILD_APPS "Compile apps" ON)
if(GREETER_BUILD_APPS)
				message(STATUS "Configuring Greeter with executables")
				add_subdirectory(apps)
endif()

# Tests
# Options, to change with: 
# cmake -DGREETER_BUILD_TESTS=OF
option(GREETER_BUILD_TESTS "Compile tests" ON)
if(GREETER_BUILD_TESTS)
	message(STATUS "Configuring Greeter with tests")
	enable_testing()
	add_subdirectory(tests)
endif()
