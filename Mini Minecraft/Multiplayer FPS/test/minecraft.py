
import socket, ast
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

HOST = '127.0.0.1'
PORT = '8080'

app = Ursina()
# client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

class Voxel(Button):
    def __init__(self, position=(0.0,0.0,0.0)):

        super().__init__(
            parent=scene,
            position=position,
            model='cube',
            origin_y=.5,
            texture='white_cube',
            color=color.color(0, 0, random.uniform(.9, 1.0)),
            highlight_color=color.lime,
        )

for z in range(8):
    for x in range(8):
        voxel = Voxel(position=(x,0,z))

def update():
    if player.y < -10:
        player.y = 30

def input(key):
    global position
    hit_info = raycast(camera.world_position, camera.forward, distance=100)

    if key == 'left mouse down':
        if hit_info.hit:

            client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            client_socket.connect((HOST, int(PORT)))

            position = hit_info.entity.position + hit_info.normal
            client_socket.send(str(tuple(position)).encode('utf-8'))
            
            position = client_socket.recv(1024).decode('utf-8')
            position = Vec3(ast.literal_eval(position))
            
            print(position)
            Voxel(position=position)

    if key == 'right mouse down' and mouse.hovered_entity:
        destroy(mouse.hovered_entity)

player = FirstPersonController()
app.run()
# client_socket.close()
