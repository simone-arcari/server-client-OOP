#include <iostream>
#include "Server.hpp"

int main() {
    Server server;
    //Server serverProva(1234);

    if(server.setup()) {
        std::cerr << "Errore nel setup del server" << std::endl;
        return EXIT_FAILURE;
    }

   /*  if(serverProva.setup()) {
        std::cerr << "Errore nel setup del server" << std::endl;
        return EXIT_FAILURE;
    } */
    
    //serverProva.run();
    server.run();   // loop infinito

    return EXIT_SUCCESS;
}