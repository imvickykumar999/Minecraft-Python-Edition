execute if block 15 -22 -26 acacia_pressure_plate[powered=true] unless entity @e[type=minecart,x=23,y=-23,z=-17,dx=0,dy=0,dz=0] unless entity @e[tag=minecart1] run function game:minecart/1/generate

tag @e[type=minecart,tag=!minecart1,x=23,y=-23,z=-17,dx=0,dy=0,dz=0] add minecart1
execute as @e[type=minecart,x=15,y=-23,z=-17,dx=8,dy=0,dz=0] run data merge entity @s {Motion:[-0.1,0.0,0.0]}

execute as @e[type=minecart,tag=minecart1] unless entity @s[x=10,y=-25,z=-21,dx=15,dy=6,dz=8] at @s unless entity @a[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["minecart1"]}}}] run function common:ingame/minecart/remove