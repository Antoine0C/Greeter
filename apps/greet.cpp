#include <iostream>
//#include <greeter_config.h>
#include <greeter/build_info.h>
#include <greeter/message.h>

/*
std::string get_build_system(){
				return GREETER_SYSTEM;
}

std::string get_build_info(){
				return "build on " + get_build_system() + " with " + GREETER_COMPILER;
}


std::string get_message(const std::string& name){
				return "Hello" + name + "!";
}
*/
// usage:
//
using namespace greeter;

int main(int argc, char* argv[]){
				if(argc >1){
								std::cout << get_message(argv[1]) << std::endl;
				}
				else{
								std::cout << get_message("World") << std::endl;
				}
				std::cout << get_build_info() << std::endl;
				return 0;
}
