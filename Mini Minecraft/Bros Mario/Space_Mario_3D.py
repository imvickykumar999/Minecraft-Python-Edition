
import time
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()
t = time.time()
cont = True

mario  = Audio('static/super-mario-bros.mp3',  loop = True,  autoplay = True)
fall   = Audio('static/Super Mario Death.mp3', loop = False, autoplay = False)
winner = Audio('static/Super Mario Won.mp3',   loop = True,  autoplay = False)

class Voxel(Button):
    def __init__(
        self, position=(0,0,0),
        color=color.white,
        texture='static/wall.png'
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
    for z in range(y, 100, 12):
        for x in range(3):
            Voxel(position=(x,y,z))

for y in range(4):
    for z in range(y+110, 216, 13):
        Voxel(
        position=(1,y,z),
        color=color.yellow,
        )

def update():
    global deatils, player, won, cont

    if (player.z < 212 and player.y < -2) or (time.time() - t > 100):
        won.text = 'You Lost'
        won.color = color.red

        mario.pause()
        if cont:
            cont = False
            fall.play()
        
    if player.z > 212 and player.y > -1:
        won.text = 'You Won'

        mario.pause()
        if cont:
            cont = False
            winner.play()
        
    deatils.text = f'''
    Score = {int(player.z)}
    Time left = {int(100 - (time.time() - t))} sec.
    '''

def input(key):
    if key == 'right mouse down' and mouse.hovered_entity:
        destroy(mouse.hovered_entity)

deatils = Text(
    origin=(.1, -4),
	font='VeraMono.ttf', 
	color=color.white,
	) 

won = Text(
    origin=(0,-4),
	color=color.green,
	) 

window.fullscreen = True
player = FirstPersonController()
player.gravity = 10e-2
player.y = 100
player.z = 2
player.x = 1

skybox_image = load_texture("static/space.png")
sky = Sky(texture=skybox_image)
# Sky()
app.run()
