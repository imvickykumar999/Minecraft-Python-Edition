execute as @e[type=tnt,x=12,y=37,z=0,distance=..1,tag=!tnt_init] run data merge entity @s {Fuse:30}
execute as @e[type=tnt,x=12,y=37,z=0,distance=..1,tag=!tnt_init] run tag @s add tnt_init
execute as @e[tag=tnt_init,nbt={Fuse:3s}] at @s run function game:tnt_barrel/gate_explode/explode
execute as @e[tag=tnt_init,nbt={Fuse:3s}] run kill @s

execute positioned 12 36 0 run function game:tnt_barrel/gate_explode/redstone_block