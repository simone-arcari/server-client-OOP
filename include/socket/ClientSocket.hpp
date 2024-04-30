#pragma once

#include <string>
#include "Socket.hpp"

class ClientSocket : public Socket {
private:
    /* data */
    struct sockaddr_in clientAddr;
    std::string ip;

public:
    ClientSocket(/* args */);
    ~ClientSocket();

    std::string getIP();
    struct sockaddr_in getClientAddr();
    void setClientAddr(struct sockaddr_in addr);
};

