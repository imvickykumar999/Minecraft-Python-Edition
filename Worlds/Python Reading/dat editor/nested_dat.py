
from nbt import nbt
nbtfile = nbt.NBTFile("level.dat", 'rb')
data = nbtfile["Data"]

for tag in data.tags:
    print(tag.tag_info())

    if isinstance(tag, nbt.TAG_Compound):
        for i in tag.tags:
            print('\t', i.tag_info())
