#pragma once

#include <netinet/in.h>
#include <string>

class Socket {
private:
    int sockfd = -1;
    int serverPort;
    struct sockaddr_in serverAddress;
    in_addr_t ipAddr;

public:
    Socket();
    Socket(int port, in_addr_t ip);
    ~Socket();

    //virtual bool createSocket() = 0;
    void closeSocket();
    bool sendString(std::string msg);

    int getDescriptor();
    void setDescriptor(int fd);

    int getServerPort();
    void setServerPort(int port);

    struct sockaddr_in getServerAddress();
    void setServerAddress(struct sockaddr_in serverAddress);

    in_addr_t getIpAddr();
    void setIpAddr(in_addr_t ip);
};