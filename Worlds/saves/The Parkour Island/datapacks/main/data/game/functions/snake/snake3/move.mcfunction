execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 1.. run scoreboard players add @s snake3timer 1 
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 30.. run scoreboard players set @s snake3timer 0

execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 2..2 as @e[tag=snake3snake,distance=..1.1] at @s unless entity @s[scores={snake3timer=1..}] run scoreboard players set @s snake3timer 1

execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 2 run setblock ~ ~1 ~ gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 4 run setblock ~ ~1 ~ light_gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 6 run setblock ~ ~1 ~ gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 8 run setblock ~ ~1 ~ light_gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 10 run setblock ~ ~1 ~ gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 12 run setblock ~ ~1 ~ light_gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 14 run setblock ~ ~1 ~ gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 16 run setblock ~ ~1 ~ light_gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 18 run setblock ~ ~1 ~ gray_concrete
execute as @e[tag=snake3snake] at @s if score @s snake3timer matches 20 run setblock ~ ~1 ~ air

execute as @e[tag=snake3snake] at @s unless score @s snake3timer matches 1.. unless block ~ ~1 ~ air run setblock ~ ~1 ~ air

schedule function game:snake/snake3/move 4t