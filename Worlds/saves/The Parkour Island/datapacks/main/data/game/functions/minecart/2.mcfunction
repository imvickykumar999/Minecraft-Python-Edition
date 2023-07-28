execute unless entity @a[x=2,y=15,z=51,distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run setblock 2 13 51 stone
execute if entity @a[x=2,y=15,z=51,distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run setblock 2 13 51 redstone_torch

execute if score minecart2 ingame_timer matches 1.. run scoreboard players remove minecart2 ingame_timer 1
execute as @e[type=minecart,x=2,y=15,z=51,distance=..1] run scoreboard players set minecart2 ingame_timer 50
execute if entity @a[x=2,y=15,z=51,distance=..10] unless score minecart2 ingame_timer matches 1.. run summon minecart 2 15 51 {Tags:["minecart2"]}

execute as @e[type=minecart,tag=minecart2,x=2,y=15,z=51,distance=1..] at @s unless entity @a[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["minecart2"]}}}] run function common:ingame/minecart/remove
execute as @e[type=minecart,tag=minecart2] at @s unless entity @a[distance=..10] run kill @s