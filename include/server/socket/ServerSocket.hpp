#pragma once

#include "Socket.hpp"
#include "ServerSocketForClient.hpp"


class ServerSocket : public Socket{
private:
    
public:
    ServerSocket();
    ServerSocket(int port, in_addr_t ip);
    ~ServerSocket();

    bool createSocket();
    bool listenSocket(int backlog);
    ServerSocketForClient& acceptConnection();  //deve ritornare un oggetto Socket
};
