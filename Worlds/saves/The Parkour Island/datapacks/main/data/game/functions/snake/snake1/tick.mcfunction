execute unless entity @e[tag=snake1snake] if entity @a[x=-10,y=-42,z=-51,dx=73,dy=37,dz=66,gamemode=!spectator] run function game:snake/snake1/summon
execute unless entity @a[x=-10,y=-42,z=-51,dx=73,dy=37,dz=66,gamemode=!spectator] if entity @e[tag=snake1snake] run function game:snake/snake1/clear

execute if block 15 -18 -26 acacia_pressure_plate[powered=true] as @e[tag=snake1begin] unless entity @e[tag=snake1begin,scores={snake1timer=1..}] at @s run scoreboard players set @s snake1timer 1