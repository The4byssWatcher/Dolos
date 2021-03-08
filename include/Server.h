#ifndef __SERVER_H
#define __SERVER_H

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <iostream>
#include <unistd.h>
#include <vector>
#include <thread>

extern std::vector<std::thread> threads;

enum ServerLogLevel {
    INFO,
    WARNING,
    ERROR,
    COMMAND
};


// TODO: Add proper error codes to better understanding and reading of code
class Server {
private:
    int MAX_QUEUE;
    socklen_t length;
    int listen_socket;
    sockaddr_in server;
    std::thread* acceptConnectionsThread;

public:
    Server(int MAX_QUEUE, int port);
    ~Server();
    void serverLoop(); 

private:
    void handleConnections(int connectionFD, sockaddr_in* connction);
    void serverLog(const std::string& input, ServerLogLevel level);
    void acceptConnections();
};

#endif
