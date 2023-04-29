
import json
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

path = "test.json"
with open(path) as f:
   obj = json.load(f)

app = Ursina()
grass_texture = load_texture('assets/grass_block.png')
stone_texture = load_texture('assets/stone_block.png')
brick_texture = load_texture('assets/brick_block.png')
dirt_texture  = load_texture('assets/dirt_block.png')
sky_texture   = load_texture('assets/skybox.png')
arm_texture   = load_texture('assets/arm_texture.png')
punch_sound   = Audio('assets/punch_sound',loop = False, autoplay = False)
block_pick = 1

window.fps_counter.enabled = False
window.exit_button.visible = False

def update():
	global block_pick

	if player.y < -5:
		player.y = 75 # jump off the boundry 

	if held_keys['left mouse'] or held_keys['right mouse']:
		hand.active()
	else:
		hand.passive()

	if held_keys['1']: block_pick = 1
	if held_keys['2']: block_pick = 2
	if held_keys['3']: block_pick = 3
	if held_keys['4']: block_pick = 4

class Voxel(Button):
	def __init__(self, position = (0,0,0), texture = grass_texture):
		super().__init__(
			parent = scene,
			position = position,
			model = 'assets/block',
			origin_y = 0.5,
			texture = texture,
			color = color.color(0,0,random.uniform(0.9,1)),
			scale = 0.5)

	def input(self,key):
		if self.hovered:
			if key == 'left mouse down':
				punch_sound.play()
				save_new = self.position + mouse.normal

				if block_pick == 1: 
					texture = grass_texture
					voxel = Voxel(position = save_new, texture = texture)
				if block_pick == 2: 
					texture = stone_texture
					voxel = Voxel(position = save_new, texture = texture)
				if block_pick == 3: 
					texture = brick_texture
					voxel = Voxel(position = save_new, texture = texture)
				if block_pick == 4: 
					texture = dirt_texture
					voxel = Voxel(position = save_new, texture = texture)

				obj["position"].append({str(texture) : list(save_new)})
				with open(path,"w+") as of:
					json.dump(obj,of)

			if key == 'right mouse down':
				punch_sound.play()
				destroy(self)

class Sky(Entity):
	def __init__(self):
		super().__init__(
			parent = scene,
			model = 'sphere',
			texture = sky_texture,
			scale = 150,
			double_sided = True)

class Hand(Entity):
	def __init__(self):
		super().__init__(
			parent = camera.ui,
			model = 'assets/arm',
			texture = arm_texture,
			scale = 0.2,
			rotation = Vec3(150,-10,0),
			position = Vec2(0.4,-0.6))

	def active(self):
		self.position = Vec2(0.3,-0.5)

	def passive(self):
		self.position = Vec2(0.4,-0.6)


for i in obj['position']:
	texture = load_texture(f'assets/{list(i.keys())[0]}')
	save_new = Vec3(tuple(list(i.values())[0]))
	voxel = Voxel(position = save_new, texture = texture)

for z in range(20):
	for x in range(20):
		voxel = Voxel(position = (x,0,z))
		
player = FirstPersonController()
sky = Sky()
hand = Hand()

app.run()