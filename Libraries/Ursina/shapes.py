
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()

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
            highlight_color=color.lime,
        )

for z in range(8):
    for x in range(8):
        voxel = Voxel(position=(x,0,z))

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
    if player.y < -5:
        player.y = 100

player = FirstPersonController()
player.gravity = 0.1
Sky()
app.run()