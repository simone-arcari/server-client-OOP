#pragma once

#include <string>
#include "Socket.hpp"

class ServerSocketForClient : public Socket
{
private:
    struct sockaddr_in clientAddr;
    std::string ip;
    bool acceptError = false;

public:
    ServerSocketForClient();
    ~ServerSocketForClient();

    std::string getClientIP();
    
    struct sockaddr_in getClientAddr();
    void setClientAddr(struct sockaddr_in addr);
    
    bool getAcceptErrStatus();
    void setAcceptErrStatus(bool status);
};

