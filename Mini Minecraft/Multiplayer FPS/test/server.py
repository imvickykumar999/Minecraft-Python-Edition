
import socket
HOST = '127.0.0.1'
PORT = '8080'

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((HOST, int(PORT)))
server.listen(5)

while True:
    # Press `CTRL + PAUSE/BREAK` to exit server

    communication_socket, address = server.accept()
    print(f"\nConnected to {address}")

    message = communication_socket.recv(1024).decode('utf-8')
    print(f"Message: {message}")
    communication_socket.send(message.encode('utf-8'))

    communication_socket.close()
    print(f"Communication with {address} ended")
