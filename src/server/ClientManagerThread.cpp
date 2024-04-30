#include "ClientManagerThread.hpp"

ClientManagerThread::ClientManagerThread() {
    // Codice del costruttore
}

ClientManagerThread::~ClientManagerThread() {
    // Codice del distruttore
}

void ClientManagerThread::operator()(ClientSocket socket) {
    // Codice del thread che serve il client
    socket.sendString("Benvenuto sul Server\n");

    /*
     *  Code
     */

    socket.closeSocket();
}