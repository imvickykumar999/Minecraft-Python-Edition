
import socket  # Importing the socket module to create network sockets

# Defining the host and port to listen on
HOST = '127.0.0.1'  # Localhost IP address
PORT = '8080'  # Port number to listen on

# Creating a socket object for the server
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Binding the socket object to the host and port
server.bind((HOST, int(PORT)))

# Listening for incoming connections from clients, with a maximum queue of 5 clients
server.listen(2)

# Infinite loop to keep the server running
while True:
    # Press `CTRL + PAUSE/BREAK` to exit server

    # Accepting incoming connection from client and getting the communication socket and client address
    communication_socket, address = server.accept()
    print(f"\nConnected to {address}")

    # Receiving data from the client and decoding it to a string using UTF-8 encoding
    message = communication_socket.recv(1024).decode('utf-8')
    print(f"Message: {message}")

    # Sending a message back to the client to acknowledge that the message was received
    communication_socket.send(f"Message received".encode('utf-8'))

    # Closing the communication socket with the client
    communication_socket.close()
    print(f"Communication with {address} ended")
