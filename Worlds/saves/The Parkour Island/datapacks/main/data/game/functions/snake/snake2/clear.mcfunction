scoreboard players set @e[tag=snake2snake] snake2timer 0
execute as @e[tag=snake2snake] at @s run setblock ~ ~1 ~ air
kill @e[tag=snake2snake]
schedule clear game:snake/snake2/move
schedule clear game:snake/snake2/move_reversed