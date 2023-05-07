
from ursina import *
import circle as cir
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()
radius = 10
step = 2

class Voxel(Button):
    def __init__(self, position=(0,0,0), 
                 texture="grass", 
                 col=color.color(0, 0, random.uniform(.9, 1.0))):
        
        super().__init__(parent=scene,
            position=position,
            model='cube',
            origin_y=.5,
            texture=texture,
            color=col,
            highlight_color=color.white,
        )

for z in range(-radius, radius+1):
    for x in range(-radius, radius+1):
        voxel = Voxel(position=(x,0,z))

# i=radius # 1 layer
for i in range(1, radius+1, step):
    for x in cir.printPattern(i,i):
        Voxel(
            position=x,
            texture="brick",
            col=color.red,
            )

def input(key):
    hit_info = raycast(camera.world_position, camera.forward, distance=100)

    if key == 'left mouse down':
        if hit_info.hit:
            Voxel(position=hit_info.entity.position + hit_info.normal, 
                  texture="brick",
                  col=color.orange,
                  )

    if key == 'right mouse down' and mouse.hovered_entity:
        destroy(mouse.hovered_entity)

def update():
    # print(player.x, player.y, player.z)
    if player.y < -5:
        player.y = 100

player = FirstPersonController()
player.gravity = 0.1
Sky()
app.run()