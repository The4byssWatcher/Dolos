#include "../include/Server.h"

void testCommand(const char &buffer) {
    std::string newString = &buffer;
    if(newString == "Ping!") {
        std::cout << "Pong!" << std::endl;
    }
}

 // Server and Command Logging
void Server::serverLog(const std::string& input, ServerLogLevel level) {
    switch(level) {
        case INFO: {
            std::cout <<"\r\u001b[33;1m[ INFO ]\u001b[0m " << input << std::endl;
            break;
        }

        case WARNING: {
            break;
        }

        case ERROR: {
            std::cout  <<"\r\u001b[31;1m[ ERROR ]\u001b[0m " << input << std::endl;
            break;
        }

        case COMMAND: {
            break;
        }
    }
}

/**  
 * Server::Server
 * * Starts the Server and Initializes the Listening Socket
 * ? What else could I add to this function?
 * @param MAX_QUEUE Max number of incoming connections the server can take at a time
 * @param port The port number the server will be listening on
*/

Server::Server(int MAX_QUEUE, int port) {
    listen_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    server.sin_addr.s_addr = INADDR_ANY; // Allow any address / same as 0.0.0.0
    server.sin_family = AF_INET; // Set family type to IPv4
    server.sin_port = htons(port); // Set current port
    memset(server.sin_zero, 0, sizeof(server.sin_zero)); // Zero it out

    length = sizeof(server); // Set length variable

    if(bind(listen_socket, (struct sockaddr*)&server, length) == -1) {
       serverLog("Failed to Bind Socket!", ERROR);
       exit(0);
    }

    if(listen(listen_socket, MAX_QUEUE) == -1) {
        serverLog("Failed to Set Socket to Listening!", ERROR);
        exit(0);
    }
    // Spawn Server Loop in a Thread on the Heap
    serverLog("Server Initiated Sucessfully!", INFO);
    
    acceptConnectionsThread = new std::thread(&Server::acceptConnections, this);
    serverLog("Accepting Connections!", INFO);
}

// Cleans up memory and destroys created objects
Server::~Server() {
    serverLog("Closing Server!", INFO);
    delete(acceptConnectionsThread);
    close(listen_socket);
}

// Server loop to process commands
// FIXME: Make new connections threaded so the server can handle multiple connections without waiting on data
// TODO: Make wrapper function for threads so they auto join at the end of scope and also have mutex for data
void Server::serverLoop() {
    
    while(true) {
        char buffer[1024];

        std::cout << "\033[1;93m>> \033[0m";
        std::cin.getline(buffer, sizeof(buffer));
    }
}

// Function to handler new incoming connections to the server
// TODO: Add command processing and state checking of those commands
// TODO: Add more error handling and fix output of errors and commands
void Server::handleConnections(int clientFD, sockaddr_in* newClient) {
    while(true) {
        char buffer[1024];
        int code = recv(clientFD, buffer, sizeof(buffer), 0);

        if(code == 0) {
            std::string address = inet_ntoa(newClient->sin_addr);
            int port = ntohs(newClient->sin_port);
            std::string final = address + ":" + std::to_string(port) + " Disconnected!";
            serverLog(final, INFO);
            return;

        } else if(code < 0) {
            serverLog("Reading from Socket!", ERROR);
            return;
        }

        std::cout << "\n" << buffer << std::endl;
        testCommand(*buffer);
    }
    close(clientFD);
}

// Threaded so we can still accept connections while typing commands. 
// Thread's main purpose is to accept connections and add the clientFD to the server list and spawn a thread for the connection
void Server::acceptConnections() {
    std::vector<std::thread> threads;

    while(true) {
        int newClientFD;
        socklen_t newClientLength;
        sockaddr_in newClientAddr;
        newClientLength = sizeof(sockaddr_in);

        newClientFD = accept(listen_socket, (struct sockaddr*)&newClientAddr, &newClientLength);

        if(newClientFD < 0) {
            serverLog("Accepting New Client!", ERROR);
        }

        if(newClientFD > 0) {
            std::string address = inet_ntoa(newClientAddr.sin_addr);
            int port = ntohs(newClientAddr.sin_port);
            std::string final = address + ":" + std::to_string(port) + " Connected!";
            serverLog(final, INFO);
            
            threads.push_back(std::thread(&Server::handleConnections, this,newClientFD, &newClientAddr));
        }
    }
}