
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()

class Voxel(Button):
    def __init__(
            self, position=(0,0,0),
            color=color.orange,
            texture='brick',
        ):
        
        super().__init__(
            parent=scene,
            position=position,
            model='cube',
            origin_y=.5,
            texture=texture,
            color=color,
            highlight_color=color,
        )

for y in range(3,-1,-1):
    for z in range(y, 100, 6):
        for x in range(2):
            voxel = Voxel(position=(x,y,z),
                          color=color.green,
                          texture='grass',
                          )

for y in range(5):
    for z in range(y+110, 210, 14):
        for x in range(2):
            voxel = Voxel(position=(x,y,z))

def update():
    global deatils, player, won

    if player.y < -2:
        won.text = 'You Lost'
        
    if player.z > 205 and player.y > -1:
        deatils.text = 'You Won'
    else:
        deatils.text = f'''
        Score = {int(player.z)}
        '''


def input(key):
    hit_info = raycast(camera.world_position, camera.forward, distance=100)

    # if key == 'left mouse down':
    #     if hit_info.hit:
    #         Voxel(position=hit_info.entity.position + hit_info.normal)

    if key == 'right mouse down' and mouse.hovered_entity:
        destroy(mouse.hovered_entity)


deatils = Text(
    origin=(.2, -4),
	font='VeraMono.ttf', 
	color=color.white,
	) 

won = Text(
    origin=(0,-4),
	color=color.red,
	) 

window.fullscreen = 1
player = FirstPersonController()
player.gravity = 10e-2

skybox_image = load_texture("space.png")
sky = Sky(texture=skybox_image)
app.run()