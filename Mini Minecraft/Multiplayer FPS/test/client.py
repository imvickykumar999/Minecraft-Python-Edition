
import socket
HOST = '127.0.0.1'
PORT = '8080'

client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client_socket.connect((HOST, int(PORT)))

message = input('\nEnter message : ')
client_socket.send(message.encode('utf-8'))

print(client_socket.recv(1024).decode('utf-8'))
client_socket.close()
