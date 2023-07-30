
# pip install mcpi
from mcpi.minecraft import Minecraft 

mc = Minecraft.create(address = 'localhost', port = 50657) 
mc.postToChat('/gamemode survival')

pos = mc.player.getPos()
print(pos)
