execute positioned ~ ~1.2 ~ as @a[dx=0,dy=0,dz=0,team=end,tag=!end_elytra] run tag @s add end_elytra
execute positioned ~ ~1.2 ~ as @a[dx=0,dy=0,dz=0,team=race,tag=!end_elytra,tag=race_finish] run tag @s add end_elytra

function common:ingame/end_elytra/item_entity

execute as @a[tag=end_elytra] unless entity @s[team=end] unless entity @s[team=race,tag=race_finish] run function common:ingame/end_elytra/remove

execute as @a[tag=end_elytra] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function common:ingame/end_elytra/give
execute as @a[tag=end_elytra] unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run function common:ingame/end_elytra/give_firework