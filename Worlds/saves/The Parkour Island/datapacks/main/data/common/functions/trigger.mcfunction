scoreboard players enable @s show_pb
execute if score @s show_pb matches 1.. if score @s pb matches 2147483647 run tellraw @s [{"text": "You don't have any PB yet.","color": "gray"}]
execute if score @s show_pb matches 1.. unless score @s pb matches 2147483647 run tellraw @s [{"text": "Your PB: ","color": "gray"},{"score":{"objective":"pb_hour","name":"@s"},"color":"gold"},{"text":" hours ","color":"gold"},{"score":{"objective":"pb_min","name":"@s"},"color":"gold"},{"text":" minutes and ","color":"gold"},{"score":{"objective":"pb_sec","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"pb_dec","name":"@s"},"color":"gold"},{"text":" seconds.","color":"gold"}]
execute unless score @s show_pb matches 0 run scoreboard players set @s show_pb 0


scoreboard players enable @s reset_pb
execute if score @s reset_pb matches 1.. run tellraw @s [{"text": "Your PB has been reset.","color": "gray"}]
execute if score @s reset_pb matches 1.. run scoreboard players set @s pb 2147483647
execute unless score @s reset_pb matches 0 run scoreboard players set @s reset_pb 0


scoreboard players enable @a restart
#normal
execute if score @s restart matches 1.. as @s[team=!race] run tp @s 47 2.9375 -53 45.0 30.0
execute if score @s restart matches 1.. as @s[team=!race] run gamemode adventure @s
execute if score @s restart matches 1.. as @s[team=!race] run effect clear @s
execute if score @s restart matches 1.. as @s[team=!race] at @s run spawnpoint @s ~ ~ ~
execute if score @s restart matches 1.. as @s[team=!race,team=!training_mode] run team join ingame @s
execute if score @s restart matches 1.. as @s[team=!race,team=!training_mode] run tag @s remove end
execute if score @s restart matches 1.. as @s[team=!race,team=!training_mode] run function common:timer/timer/reset
#race
execute if score @s restart matches 1.. as @s[team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "This function cannot be used in a race.","color": "gray"}]
execute unless score @s restart matches 0 run scoreboard players set @s restart 0

scoreboard players enable @a lobby
#normal
execute if score @s lobby matches 1.. as @s[team=!race] run function common:back_to_lobby
#race
execute if score @s lobby matches 1.. as @s[team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "This function cannot be used in a race.","color": "gray"}]
execute unless score @s lobby matches 0 run scoreboard players set @s lobby 0


scoreboard players enable @a training_mode
#normal
execute as @a[scores={training_mode=1..},team=training_mode] run function common:training_mode/team_leave
execute as @a[scores={training_mode=1..},team=!training_mode,team=!race] run function common:training_mode/team_join
#race
execute as @a[scores={training_mode=1..},team=race] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "This function cannot be used in a race.","color": "gray"}]
execute unless score @s training_mode matches 0 run scoreboard players set @s training_mode 0

function common:race/trigger