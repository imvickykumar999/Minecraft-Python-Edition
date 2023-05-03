import math # always useful to have
import ctypes # needed to interact with python at a lower level
import pyglet

pyglet.options["shadow_window"] = False # no need for shadow window and also bcz may cause problem on some os
pyglet.options["debug_gl"] = False # makes things slow, so disable it

import pyglet.gl as gl

import shader
import matrix # import matrix.py file
import block_type
import texture_manager
import camera
#import chunk
import world
import hit



class Window(pyglet.window.Window): # create a class extending pyglet.window.Window
	def __init__(self, **args): #**args means all the argumenats are passed ot this function
		super().__init__(**args) # pass on arguments to pyglet.window.Window.__init__ function
		
		#create world

		self.world = world.World()
		
		# creating  shader

		self.shader = shader.Shader("vert.glsl", "frag.glsl")
		self.shader_sampler_location = self.shader.find_uniform(b"texture_array_sampler") # find our texture array sampler's uniform
		self.shader.use()

		# pyglet things
		
		pyglet.clock.schedule_interval(self.update, 1.0 / 10000) # call update function every 60th of a second
		self.mouse_captured = False

		# camera stuff

		self.camera = camera.Camera(self.shader, self.width, self.height)
	
		# misc stuff

		self.holding = 7

	def update(self, delta_time):
		print(f"FPS :: {1.0 / delta_time}")
		if not self.mouse_captured:
			self.camera.input = [0, 0, 0]

		self.camera.update_camera(delta_time)
		#self.world.set_block(self.camera.position, 7)

	def on_draw(self):
		self.camera.update_matrices()
	

		# bind textures

		gl.glActiveTexture(gl.GL_TEXTURE0) # set our active texture unit to the first texture unit
		gl.glBindTexture(gl.GL_TEXTURE_2D_ARRAY, self.world.texture_manager.texture_array) # bind our texture manager's texture
		gl.glUniform1i(self.shader_sampler_location, 0) # tell our sampler our texture is bound to the first texture unit



		#draw stuff

		gl.glEnable(gl.GL_DEPTH_TEST) # enable depth testing so faces are drawn in the right order
		gl.glEnable(gl.GL_CULL_FACE)
		gl.glClearColor(0.0, 0.0, 0.0, 1.0)
		#gl.glClearColor(1.0, 0.5, 1.0, 1.0) # set clear colour
		self.clear() # clear screen
		self.world.draw()

		gl.glFinish() # there seems to be a bit of a bug in Pyglet which makes this call necessary

		
		

	# input functions

	def on_resize(self, width, height):
		print(f"Resize {width} * {height}")
		gl.glViewport(0, 0, width, height)

		self.camera.width = width
		self.camera.height = height
	
	def on_mouse_press(self, x, y, button, modifiers):
		if not self.mouse_captured:
			self.mouse_captured = True
			self.set_exclusive_mouse(True)

			return

		# handle breaking/placing blocks

		def hit_callback(current_block, next_block):
			if button == pyglet.window.mouse.RIGHT: self.world.set_block(current_block, self.holding)
			elif button == pyglet.window.mouse.LEFT: self.world.set_block(next_block, 0)
			elif button == pyglet.window.mouse.MIDDLE: self.holding = self.world.get_block_number(next_block)
		
		hit_ray = hit.Hit_ray(self.world, self.camera.rotation, self.camera.position)

		while hit_ray.distance < hit.HIT_RANGE:
			if hit_ray.step(hit_callback):
				break
	
	def on_mouse_motion(self, x, y, delta_x, delta_y):
		if self.mouse_captured:
			sensitivity = 0.004

			self.camera.rotation[0] += delta_x * sensitivity
			self.camera.rotation[1] += delta_y * sensitivity

			self.camera.rotation[1] = max(-math.tau / 4, min(math.tau / 4, self.camera.rotation[1]))
	
	def on_mouse_drag(self, x, y, delta_x, delta_y, buttons, modifiers):
		self.on_mouse_motion(x, y, delta_x, delta_y)

	def on_key_press(self, key, modifiers):
		if not self.mouse_captured:
			return

		if   key == pyglet.window.key.D: self.camera.input[0] += 1
		elif key == pyglet.window.key.A: self.camera.input[0] -= 1
		elif key == pyglet.window.key.W: self.camera.input[2] += 1
		elif key == pyglet.window.key.S: self.camera.input[2] -= 1

		elif key == pyglet.window.key.SPACE : self.camera.input[1] += 1
		elif key == pyglet.window.key.LSHIFT: self.camera.input[1] -= 1

		elif key == pyglet.window.key.ESCAPE:
			self.mouse_captured = False
			self.set_exclusive_mouse(False)
			
	def on_key_release(self, key, modifiers):
		if not self.mouse_captured:
			return

		if   key == pyglet.window.key.D: self.camera.input[0] -= 1
		elif key == pyglet.window.key.A: self.camera.input[0] += 1
		elif key == pyglet.window.key.W: self.camera.input[2] -= 1
		elif key == pyglet.window.key.S: self.camera.input[2] += 1

		elif key == pyglet.window.key.SPACE : self.camera.input[1] -= 1
		elif key == pyglet.window.key.LSHIFT: self.camera.input[1] += 1

class Game:
	def __init__(self):
		self.config = gl.Config(double_buffer = True, major_version = 3, minor_version = 3, depth_size = 16) # use modern opengl, changeing depth buffers to 16 bits (24 bits is the defalut) 24 bit causes problem on some hardware
		self.window = Window(config = self.config, width = 800, height = 600, caption = "Sasta Minecraft", resizable = True, vsync = False) # vsync with pyglet causes problems on some computers, so disable it
	
	def run(self):
		pyglet.app.run() # run our application

if __name__ == "__main__": # only run the game if source file is the one run
	game = Game() # create game object
	game.run()


