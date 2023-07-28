#joined
execute if entity @s[team=race,tag=!race_owner] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "You've already joined a race. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ").","color": "gray"}]

#exised
execute if entity @s[tag=race_owner] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "You've created a new race. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]


#normal

#set raceID to playerID
execute if entity @s[tag=!race_owner,team=!race] run scoreboard players operation @s raceID = @s ID

#set race stage to preparing
execute if entity @s[tag=!race_owner,team=!race] run tag @s add race_prep
execute if entity @s[tag=!race_owner,team=!race] run tellraw @a [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"selector":"@s","color":"green"},{"text": " have created a new race. (ID:","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gold"},{"text": ")","color": "gray"}]
execute if entity @s[tag=!race_owner,team=!race] run tellraw @a [{"text": "       Enter /trigger join_race set ","color": "gray"},{"score": {"objective":"raceID","name":"@s"},"color": "gray"},{"text": "  to join in.","color": "gray"}]

#set tag
execute if entity @s[tag=!race_owner,team=!race] run tag @s add jointeam
execute if entity @s[tag=jointeam] run tag @s add race_owner
execute if entity @s[tag=jointeam] run team join race @s
execute if entity @s[tag=jointeam] run clear @s
execute if entity @s[tag=jointeam] run scoreboard players reset @s race_rank
execute if entity @s[tag=jointeam] run function common:timer/timer/reset
execute if entity @s[tag=jointeam] run tag @s remove jointeam