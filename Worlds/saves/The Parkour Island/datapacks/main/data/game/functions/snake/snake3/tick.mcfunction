execute unless entity @e[tag=snake3snake] if entity @a[x=6,y=19,z=8,dx=35,dy=30,dz=36,gamemode=!spectator] run function game:snake/snake3/summon
execute unless entity @a[x=6,y=19,z=8,dx=35,dy=30,dz=36,gamemode=!spectator] if entity @e[tag=snake3snake] run function game:snake/snake3/clear

execute if block 10 37 26 light_weighted_pressure_plate unless block 10 37 26 light_weighted_pressure_plate[power=0] as @e[tag=snake3begin] unless entity @e[tag=snake3begin,scores={snake3timer=1..}] at @s run scoreboard players set @s snake3timer 1