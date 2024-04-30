#pragma once

#include <vector>
#include <netinet/in.h>
#include "HostInterface.hpp"
#include "ClientSocket.hpp"

class Server : public HostInterface {
private:
    int serverPort = 8080;
    int serverBacklog = 10;                   // Il numero massimo di connessioni in attesa di essere accettate
    Socket socket;

    std::vector<ClientSocket> clientSocketList;
    std::vector<std::thread> clientThreadList;

public:
    Server(/* args */);
    ~Server();
    bool setup() override;
    void run() override;
};


