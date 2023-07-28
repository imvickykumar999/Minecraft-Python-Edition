execute as @a[x=1,y=53,z=6,dx=0,dy=0,dz=0,tag=!final_elytra,team=!end,tag=!end_elytra] run tag @s add final_elytra 

function game:final_elytra/item_entity

execute as @a[tag=final_elytra] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run function game:final_elytra/give

#clear
execute as @a[tag=final_elytra,x=51,y=-50,z=-89,dx=30,dy=27,dz=32] at @s run function game:final_elytra/remove
execute as @a[tag=final_elytra,x=16,y=-2,z=-102,dx=80,dy=200,dz=84] at @s run function game:final_elytra/remove