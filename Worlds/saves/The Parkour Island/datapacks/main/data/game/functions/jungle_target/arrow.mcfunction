execute unless entity @s[tag=cd] run scoreboard players set @s ingame_timer 100
execute unless entity @s[tag=cd] run tag @s add cd

scoreboard players remove @s ingame_timer 1
execute if score @s ingame_timer matches 1..1 run kill @s