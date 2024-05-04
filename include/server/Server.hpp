#pragma once

#include <vector>
#include <thread>
#include <netinet/in.h>
#include "HostInterface.hpp"
#include "socket/ServerSocket.hpp"
#include "socket/ServerSocketForClient.hpp"

class Server : public HostInterface<ServerSocket> {
private:
    int serverBacklog = 10;                   // Il numero massimo di connessioni in attesa di essere accettate

    std::vector<ServerSocketForClient> clientSocketList;
    std::vector<std::thread> clientThreadList;

public:
    Server();
    Server(int port);
    ~Server();
    
    bool setup() override;
    void run() override;
};


