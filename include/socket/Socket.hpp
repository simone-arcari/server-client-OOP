#pragma once

#include <netinet/in.h>

// Forward declaration di ClientSocket
class ClientSocket;

class Socket
{
private:
    int sockfd = -1;
    struct sockaddr_in serverAddres;
    int serverPort;
    in_addr_t addr;
    bool error = false;

public:
/*
    inet_addr("127.0.0.1")
*/
    Socket();
    Socket(int port, in_addr_t addr);
    ~Socket();

    bool create();
    bool listenSocket(int backlog);
    ClientSocket& acceptConnection();  //deve ritornare un oggetto Socket
    bool sendString(std::string msg);
    void closeSocket();
    int getDescriptor();
    bool getErrStatus();
    void setErrStatus(bool status);
};