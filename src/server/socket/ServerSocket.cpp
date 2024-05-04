#include <iostream>
#include <unistd.h>
#include "ServerSocket.hpp"
#include "ServerSocketForClient.hpp"

// Forward declaration di ClientSocket
class ServerSocketForClient;

ServerSocket::ServerSocket() {
}

ServerSocket::ServerSocket(int port, in_addr_t ip) {
    this->setServerPort(port);
    this->setIpAddr(ip);
}

ServerSocket::~ServerSocket() {
}

bool ServerSocket::createSocket() {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd == -1) {
        std::cerr << "Errore nella creazione della socket | " << strerror(errno) << std::endl;
        return true;
    }

    // Impostazione dell'indirizzo del server
    struct sockaddr_in serverAddress;
    memset(&serverAddress, 0, sizeof(serverAddress));
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_addr.s_addr = this->getIpAddr();
    serverAddress.sin_port = htons(this->getServerPort());

    // Binding del socket all'indirizzo del server
    if(bind(fd, (struct sockaddr*)&serverAddress, sizeof(serverAddress)) == -1) {
        std::cerr << "Errore nel binding del socket | " << strerror(errno) << std::endl;
        close(fd);
        return true;
    }

    // Rendo effettive le operazione svolte assegnado le variabili all'istanza
    this->setServerAddress(serverAddress);
    this->setDescriptor(fd);

    return false;
}

bool ServerSocket::listenSocket(int backlog) {
    int fd = this->getDescriptor();

    if(listen(fd, backlog) == -1) {
        std::cerr << "Errore nell'ascolto delle connessioni in arrivo " << std::endl;
        close(fd);
        return true;
    }
    return false;
}

ServerSocketForClient& ServerSocket::acceptConnection() {
    int fd = this->getDescriptor();
    ServerSocketForClient* socketPtr = new ServerSocketForClient;
    struct sockaddr_in clientAddr;
    socklen_t clientAddrLen = sizeof(clientAddr);

    int clientSocket = accept(fd, (struct sockaddr*)&clientAddr, &clientAddrLen);
    if (clientSocket == -1) {
        socketPtr->setAcceptErrStatus(true);
        std::cerr << "Errore durante l'accettazione della connessione | " << strerror(errno) << std::endl;
    }

    socketPtr->setClientAddr(clientAddr);
    socketPtr->setDescriptor(clientSocket);
    return *socketPtr;
}