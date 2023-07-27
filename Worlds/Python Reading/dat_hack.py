
# https://pypi.org/project/NBT/
# pip install NBT

from nbt import nbt
nbtfile = nbt.NBTFile("level.dat", 'rb')

# Writing data (changing the difficulty value
nbtfile["Data"]["Time"].value = -9223372036854623192

print(nbtfile["Data"]["Time"].tag_info())
nbtfile.write_file("level.dat")

for tag in nbtfile["Data"].tags: # This loop will show us each entry 
    print(tag.tag_info())
