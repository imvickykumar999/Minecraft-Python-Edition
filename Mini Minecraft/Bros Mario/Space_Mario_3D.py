
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()
mario = Audio('static/super-mario-bros.mp3', loop = True, autoplay = True)
fall = Audio('static/Super Mario Death.mp3', loop = False, autoplay = False)
cont = True

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
            Voxel(
            position=(x,y,z),
            color=color.green,
            texture='grass'
            )

for y in range(5):
    for z in range(y+110, 210, 14):
        for x in range(2):
            Voxel(position=(x,y,z))

def update():
    global deatils, player, won, cont

    if player.y < -2:
        won.text = 'You Lost'

        mario.pause()
        if cont:
            cont = False
            fall.play()
        
    if player.z > 205 and player.y > -1:
        deatils.text = 'You Won'
    else:
        deatils.text = f'''
        Score = {int(player.z)}
        '''

def input(key):
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

window.fullscreen = True
player = FirstPersonController()
player.gravity = 10e-2

skybox_image = load_texture("static/space.png")
sky = Sky(texture=skybox_image)
# Sky()
app.run()
