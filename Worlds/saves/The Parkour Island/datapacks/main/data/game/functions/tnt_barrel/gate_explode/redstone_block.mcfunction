execute if entity @a[nbt={Inventory:[{id:"minecraft:tnt"}]},distance=..5] unless block ~ ~ ~ redstone_block if block 13 37 0 iron_door run setblock ~ ~ ~ redstone_block destroy

execute unless entity @a[nbt={Inventory:[{id:"minecraft:tnt"}]},distance=..5] if block ~ ~ ~ redstone_block unless entity @e[type=tnt,distance=..2] run setblock ~ ~ ~ dark_oak_planks destroy