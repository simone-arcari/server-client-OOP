#include <arpa/inet.h>
#include <iostream>
#include "ClientSocket.hpp"

ClientSocket::ClientSocket() {
    // Implementazione del costruttore
}

ClientSocket::~ClientSocket() {
    // Implementazione del distruttore
}

std::string ClientSocket::getIP() {
    char str[INET_ADDRSTRLEN];
    if (inet_ntop(AF_INET, &(clientAddr.sin_addr), str, INET_ADDRSTRLEN) == nullptr) {
        std::cerr << "Errore nella conversione dell'indirizzo IP | " << strerror(errno) << std::endl;
    }

    std::string strIP(str);
    return strIP;
}

struct sockaddr_in ClientSocket::getClientAddr() {
    return this->clientAddr;
}

void ClientSocket::setClientAddr(struct sockaddr_in addr) {
    this->clientAddr = addr;
}