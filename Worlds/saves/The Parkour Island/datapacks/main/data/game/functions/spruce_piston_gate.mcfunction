execute if entity @a[x=-26,y=0,z=-19,dx=1,dy=6,dz=1] if block -23 -1 -20 redstone_block run setblock -23 -1 -20 stone
execute unless entity @a[x=-26,y=0,z=-19,dx=1,dy=6,dz=1] unless block -23 -1 -20 redstone_block run setblock -23 -1 -20 redstone_block

#slowfalling
execute as @a[x=-26,y=-4,z=-19,dx=1,dy=2,dz=1] run effect give @s slow_falling 1 0 true