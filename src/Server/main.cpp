#include <iostream>
#include "../../include/Server/Server.h"
#include "config.h"

int main() {
    std::string input;
    Server server = Server(10, 445);
    std::cout << PROJECT_VER << std::endl;

    while(true) {
        std::cout << "\033[1;93m>> \033[0m";
        std::getline(std::cin, input);
    }
    return 0;
}