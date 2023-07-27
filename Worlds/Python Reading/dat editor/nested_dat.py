
from nbt import nbt
nbtfile = nbt.NBTFile("level.dat", 'rb')

# nbtfile["Data"]["Time"].value = -9223372036854623192

for tag in nbtfile["Data"].tags:
    print(tag.tag_info())
