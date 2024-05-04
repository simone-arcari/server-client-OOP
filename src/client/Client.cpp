#include <iostream>
#include <arpa/inet.h>
#include "Client.hpp"

Client::Client() {
}

Client::Client(int port) {
    this->setServerPort(port);
}

Client::~Client() {
}

bool Client::setup() {
    int serverPort = this->getServerPort();

    this->socket = Socket(serverPort, inet_addr("127.0.0.1"));

    // Crea la socket principale del Server
    if(this->socket.create()) {
        std::cerr << "Errore metodo create()" << std::endl;
        return true;
    }

    return false;
}

void Client::run() {

}