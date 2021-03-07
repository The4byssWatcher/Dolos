#include <sys/socket.h>
#include <arpa/inet.h>
#include <iostream>
#include <netdb.h>
#include <memory.h>
#include <unistd.h>

int main() {
    int sock_fd, connection_fd;
    sockaddr_in serveraddr;

    sock_fd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    if(sock_fd == -1) {
        std::cout << "Failed to create socket!";
        return -1;
    }

    serveraddr.sin_family = AF_INET;
    serveraddr.sin_port = htons(445); // Port to connect to
    serveraddr.sin_addr.s_addr = inet_addr("127.0.0.1"); // IP to connect to
    memset(&serveraddr.sin_zero, 0, sizeof(serveraddr.sin_zero));

    if(connect(sock_fd, (struct sockaddr*)&serveraddr, sizeof(serveraddr)) == -1) {
        std::cout << "Failed to connect to server!" << std::endl;
        return -1;
    } else { 
        std::cout << "Connected to Server!" << std::endl;
    } 

    close(sock_fd);
}