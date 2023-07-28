execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 1.. run scoreboard players add @s snake2timer 1 
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 45.. run scoreboard players set @s snake2timer 0

execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 2..2 as @e[tag=snake2snake,distance=..1.1] at @s unless entity @s[scores={snake2timer=1..}] run scoreboard players set @s snake2timer 1

execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 2 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 4 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 6 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 8 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 10 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 12 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 14 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 16 run setblock ~ ~1 ~ purple_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 18 run setblock ~ ~1 ~ magenta_concrete
execute as @e[tag=snake2snake] at @s if score @s snake2timer matches 20 run setblock ~ ~1 ~ air
execute as @e[tag=snake2snake] at @s unless score @s snake2timer matches 1.. unless block ~ ~1 ~ air run setblock ~ ~1 ~ air

execute unless entity @e[tag=reverse] run function game:snake/snake2/target/tick

execute unless entity @e[tag=reverse] unless entity @e[tag=reversed] run schedule function game:snake/snake2/move 4t