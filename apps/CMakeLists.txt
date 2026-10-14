#add the exe target named greet
add_executable(greet greet.cpp)
target_link_libraries(greet PRIVATE greeter)
install(TARGETS greet DESTINATION bin)

#add bin tree to the list of paths
#target_include_directories(greet PUBLIC "${PROJECT_BINARY_DIR}")

