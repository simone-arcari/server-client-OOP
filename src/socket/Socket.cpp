#include <iostream>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include "ClientSocket.hpp"

Socket::Socket() {
    // Codice del costruttore
}

Socket::Socket(int port, in_addr_t addr) {
    this->serverPort = port;
    this->addr = addr;
}

Socket::~Socket() {
    // Codice del distruttore
}

bool Socket::create() {
    this->sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (this->sockfd == -1) {
        std::cerr << "Errore nella creazione della socket | " << strerror(errno) << std::endl;
        return true;
    }

    // Impostazione dell'indirizzo del server
    memset(&this->serverAddres, 0, sizeof(this->serverAddres));
    this->serverAddres.sin_family = AF_INET;
    this->serverAddres.sin_addr.s_addr = this->addr;
    this->serverAddres.sin_port = htons(this->serverPort);

    // Binding del socket all'indirizzo del server
    if(bind(this->sockfd, (struct sockaddr*)&this->serverAddres, sizeof(this->serverAddres)) == -1) {
        std::cerr << "Errore nel binding del socket | " << strerror(errno) << std::endl;
        close(this->sockfd);
        return true;
    }

    return false;
}

bool Socket::listenSocket(int backlog) {
    if(listen(this->sockfd, backlog) == -1) {
        std::cerr << "Errore nell'ascolto delle connessioni in arrivo " << std::endl;
        close(this->sockfd);
        return true;
    }
    return false;
}

ClientSocket& Socket::acceptConnection() {
    ClientSocket* socketPtr = new ClientSocket;
    struct sockaddr_in clientAddr;
    socklen_t clientAddrLen = sizeof(clientAddr);

    int clientSocket = accept(this->sockfd, (struct sockaddr*)&clientAddr, &clientAddrLen);
    if (clientSocket == -1) {
        socketPtr->error = true;
        std::cerr << "Errore durante l'accettazione della connessione | " << strerror(errno) << std::endl;
    }

    socketPtr->setClientAddr(clientAddr);
    socketPtr->sockfd = clientSocket;
    return *socketPtr;
}

bool Socket::sendString(std::string msg){
    if(send(this->sockfd, msg.c_str(), msg.length(), 0) == -1) {
        return true;
    }
    return false;
}

void Socket::closeSocket() {
    close(this->sockfd);
}

int Socket::getDescriptor() {
    return this->sockfd;
}

bool Socket::getErrStatus() {
    return this->error;
}

void Socket::setErrStatus(bool status) {
    this->error = status;
}