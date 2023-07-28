scoreboard players set @e[tag=snake1snake] snake1timer 0
execute as @e[tag=snake1snake] at @s run setblock ~ ~1 ~ air
kill @e[tag=snake1snake]
schedule clear game:snake/snake1/move