tp @s 51 3.0625 -72 -90.0 ~
gamemode adventure @s
execute unless score @s pb matches 1.. run scoreboard players set @s pb 2147483647
execute unless score @s ID matches 0.. at @s run function common:set_id
team join ingame @s
tag @s add joined