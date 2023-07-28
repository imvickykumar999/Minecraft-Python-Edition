execute if entity @a[x=19,y=-1,z=23,dx=24,dy=11,dz=18,gamemode=!spectator] unless entity @e[tag=snow_golem] run function game:snow_golem/summon

execute unless entity @a[x=19,y=-1,z=23,dx=24,dy=11,dz=18,gamemode=!spectator] if entity @e[tag=snow_golem] as @e[tag=snow_golem] at @s run function game:snow_golem/kill