execute as @a[tag=rank] if score @s rank_timer matches 1.. run function common:rank/rank

execute as @a[tag=rank] unless score @s rank_timer matches 1.. run scoreboard players set @s rank_timer 1
execute as @a[tag=!rank] run scoreboard players set @s rank_timer 0
execute as @a[scores={rank_timer=1..}] run scoreboard players add @s rank_timer 1