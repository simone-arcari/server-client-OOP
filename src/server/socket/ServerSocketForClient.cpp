#include <arpa/inet.h>
#include <iostream>
#include "ServerSocketForClient.hpp"

ServerSocketForClient::ServerSocketForClient() {
    // Implementazione del costruttore
}

ServerSocketForClient::~ServerSocketForClient() {
    // Implementazione del distruttore
}

std::string ServerSocketForClient::getClientIP() {
    char str[INET_ADDRSTRLEN];
    if (inet_ntop(AF_INET, &(clientAddr.sin_addr), str, INET_ADDRSTRLEN) == nullptr) {
        std::cerr << "Errore nella conversione dell'indirizzo IP | " << strerror(errno) << std::endl;
    }

    std::string strIP(str);
    return strIP;
}

struct sockaddr_in ServerSocketForClient::getClientAddr() {
    return this->clientAddr;
}

void ServerSocketForClient::setClientAddr(struct sockaddr_in addr) {
    this->clientAddr = addr;
}

bool ServerSocketForClient::getAcceptErrStatus() {
    return this->acceptError;
}

void ServerSocketForClient::setAcceptErrStatus(bool status) {
    this->acceptError = status;
}