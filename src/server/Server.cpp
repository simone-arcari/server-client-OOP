#include <iostream>
#include <cstdlib>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <thread>
#include "Server.hpp"
#include "ServerSocketForClient.hpp"
#include "ClientManagerThread.hpp"

Server::Server() {
    // Implementazione del costruttore
}

Server::Server(int port) {
    this->setServerPort(port);
}

Server::~Server() {
    // Implementazione del distruttore
}

bool Server::setup() {
    int serverPort = this->getServerPort();
    this->socket = ServerSocket(serverPort, htonl(INADDR_ANY)); // INADDR_ANY == tutte le interfacce di rete

    // Crea la socket principale del Server
    if(this->socket.createSocket()) {
        std::cerr << "Errore metodo create()" << std::endl;
        return true;
    } 
    
    // In ascolto per le connessioni in arrivo
    if(this->socket.listenSocket(this->serverBacklog)) {
        std::cerr << "Errore nel metodo listenSocket" << std::endl;
        return true;
    }

    std::cout << "Server in ascolto sulla porta " << this->serverPort << "..." << std::endl;
    return false;
}

void Server::run() {
    // Accettazione e gestione di più client utilizzando i thread
    while (true) {
        ServerSocketForClient& clientSocketPtr = this->socket.acceptConnection();
        if(clientSocketPtr.getAcceptErrStatus()) {
            std::cerr << "Errore nell'accettare la connessione" << std::endl;
            continue;
        }

        // Ottieni l'indirizzo IP del client
        std::string clientIP = clientSocketPtr.getClientIP();
        std::cout << "Connessione accettata  | client ip : " << clientIP << std::endl;

        // Creazione di un thread per gestire il client
        ClientManagerThread threadObjectCallable;
        std::thread thread([&threadObjectCallable, &clientSocketPtr]() {
            threadObjectCallable(clientSocketPtr);
        });

        // Rilascio delle risorse del thread principale
        thread.detach();
        
        // Aggiorno le liste relative ai client
        this->clientSocketList.push_back(clientSocketPtr);
        this->clientThreadList.push_back(std::move(thread));
    }
}