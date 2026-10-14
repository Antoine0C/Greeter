#include <iostream>

std::string get_message(const std::string& name){
				return "Hello" + name "!";
}

// usage:
//

int main(int argc, char* argv[]){
				if(argc >1){
								std::cout << get_message(argv[1]) << std::endl;
				}
				else{
								std::cout << get_message("World") << std::endl;
				}
				return 0;
}
