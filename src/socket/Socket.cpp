#include <iostream>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include "Socket.hpp"

Socket::Socket() {
    // Codice del costruttore
}

Socket::Socket(int port, in_addr_t ip) {
    this->serverPort = port;
    this->ipAddr = ip;
}

Socket::~Socket() {
    // Codice del distruttore
}

void Socket::closeSocket() {
    close(this->sockfd);
}

bool Socket::sendString(std::string msg){
    if(send(this->sockfd, msg.c_str(), msg.length(), 0) == -1) {
        return true;
    }
    return false;
}

int Socket::getDescriptor() {
    return this->sockfd;
}

void Socket::setDescriptor(int fd) {
    this->sockfd = fd;
}

int Socket::getServerPort() {
    return this->serverPort;
}

void Socket::setServerPort(int port) {
    this->serverPort = port;
}


struct sockaddr_in Socket::getServerAddress() {
    return this->serverAddress;
}

void Socket::setServerAddress(struct sockaddr_in serverAddress) {
    this->serverAddress = serverAddress;
}

in_addr_t Socket::getIpAddr() {
    return this->ipAddr;
}

void Socket::setIpAddr(in_addr_t ip) {
    this->ipAddr = ip;
}
