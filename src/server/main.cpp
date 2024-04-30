#include <iostream>
#include "Server.hpp"

int main() {
    Server server;

    if(server.setup()) {
        std::cerr << "Errore nel setup del server" << std::endl;
        return EXIT_FAILURE;
    }
    
    server.run();   // loop infinito

    return EXIT_SUCCESS;
}