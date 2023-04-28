
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()
c=0
opt_texture = ['static/O.jpg','static/X.jpg']

class Voxel(Button):
    def __init__(
            self, position=(0,0,0), 
            texture='grass',
            default_color=color.green,
                 ):
        
        super().__init__(
            parent=scene,
            position=position,
            model='cube',
            origin_y=.5,
            texture=texture,
            highlight_color=color.yellow,
            color=default_color,
        )

n = 7
for z in range(n): # garden
    for x in range(n):
        voxel = Voxel(position=(x,0,z))

for z in range(n): # border
    for x in range(n):
        if z==0 or z==n-1 or x==0 or x==n-1:
            voxel = Voxel(position=(x,1,z),
                          default_color=color.orange,
                          texture='brick')

for x in range(2,n-2): # wall
    for y in range(2,n-2):
        voxel = Voxel(position=(x,y,0),
                      default_color=color.white,
                      texture='sky_sunset')

def input(key):
    global c
    hit_info = raycast(camera.world_position, camera.forward, distance=100)

    if key == 'left mouse down':
        c+=1

        if hit_info.hit:
            Voxel(position=hit_info.entity.position + hit_info.normal, 
                  default_color=color.white,
                  texture=opt_texture[c%len(opt_texture)],
                  )
            
    if key == 'right mouse down' and mouse.hovered_entity:
        # destroy(mouse.hovered_entity)
        player.x = hit_info.entity.position.x
        player.y = hit_info.entity.position.y
        player.z = hit_info.entity.position.z


window.fullscreen = 1
player = FirstPersonController(gravity=.2)

def update():
    if player.y < -5:
        player.y = 20

Sky()
app.run()
