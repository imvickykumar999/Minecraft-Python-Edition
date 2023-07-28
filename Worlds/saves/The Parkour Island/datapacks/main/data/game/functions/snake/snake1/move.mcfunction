execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 1.. run scoreboard players add @s snake1timer 1 
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 30.. run scoreboard players set @s snake1timer 0

execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 2..2 as @e[tag=snake1snake,distance=..1.1] at @s unless entity @s[scores={snake1timer=1..}] run scoreboard players set @s snake1timer 1

execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 2 run setblock ~ ~1 ~ light_blue_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 4 run setblock ~ ~1 ~ cyan_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 6 run setblock ~ ~1 ~ light_blue_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 8 run setblock ~ ~1 ~ cyan_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 10 run setblock ~ ~1 ~ light_blue_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 12 run setblock ~ ~1 ~ cyan_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 14 run setblock ~ ~1 ~ light_blue_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 16 run setblock ~ ~1 ~ cyan_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 18 run setblock ~ ~1 ~ light_blue_concrete
execute as @e[tag=snake1snake] at @s if score @s snake1timer matches 20 run setblock ~ ~1 ~ air

execute as @e[tag=snake1snake] at @s unless score @s snake1timer matches 1.. unless block ~ ~1 ~ air run setblock ~ ~1 ~ air

execute unless entity @e[tag=reverse] unless entity @e[tag=reversed] run schedule function game:snake/snake1/move 4t