scoreboard players set @e[tag=snake3snake] snake3timer 0
execute as @e[tag=snake3snake] at @s run setblock ~ ~1 ~ air
kill @e[tag=snake3snake]
schedule clear game:snake/snake3/move