execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 1.. run scoreboard players remove @s snake2timer 1 

execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 18..18 as @e[tag=snake2snake,distance=..1.1] at @s unless entity @s[scores={snake2timer=1..}] run scoreboard players set @s snake2timer 19

execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 1 run setblock ~ ~1 ~ air
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 3 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 5 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 7 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 9 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 11 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 13 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 15 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 17 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 19 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s unless score @s snake2timer matches 1.. unless block ~ ~1 ~ air run setblock ~ ~1 ~ air