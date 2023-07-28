#make players leave
execute as @a[team=race] if score @s raceID = @p raceID run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "The race is over.","color": "gray"}]
execute as @a[team=race] if score @s raceID = @p raceID run tag @s add race_leave
execute as @a[team=race] if score @s raceID = @p raceID run scoreboard players reset @s race_rank
execute as @a[tag=race_leave] if score @s raceID = @p raceID run tag @s remove race_finish
execute as @a[tag=race_leave] if score @s raceID = @p raceID run effect clear @s
execute as @a[tag=race_leave] if score @s raceID = @p raceID run function common:back_to_lobby
execute at @s as @a[tag=race_leave] if score @s raceID = @p raceID run tag @s remove race_leave
execute at @s as @a if score @s raceID = @p raceID run scoreboard players reset @s raceID

#remove race owner's tag
tag @s remove race_owner
tag @s remove race_prep
tag @s remove race_end
tag @s remove race_on
tag @s remove race_processing
scoreboard players set @s race_timer 0
scoreboard players set @s race_rank_glb 1
clear @s