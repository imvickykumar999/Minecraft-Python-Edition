execute unless entity @a[x=-11,y=-10,z=33,distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run setblock -11 -12 33 stone
execute if entity @a[x=-11,y=-10,z=33,distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run setblock -11 -12 33 redstone_torch

execute if score minecart3 ingame_timer matches 1.. run scoreboard players remove minecart3 ingame_timer 1
execute as @e[type=minecart,x=-11,y=-10,z=33,distance=..1] run scoreboard players set minecart3 ingame_timer 50
execute if entity @a[x=-11,y=-10,z=33,distance=..10] unless score minecart3 ingame_timer matches 1.. run summon minecart -11 -10 33 {Tags:["minecart3"]}

execute as @e[type=minecart,tag=minecart3,x=-11,y=-10,z=33,distance=1..] at @s unless entity @a[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["minecart3"]}}}] run function common:ingame/minecart/remove
execute as @e[type=minecart,tag=minecart3] at @s unless entity @a[distance=..10] run kill @s