tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "Info:","color": "gray"}]
tellraw @s [{"text": "       Race ID: ","color": "gray"},{"score":{"objective": "raceID","name":"@s"},"color": "gold"}]
tellraw @s [{"text": "       Race creator: ","color": "gray"},{"selector":"@s","color": "green"}]
execute if entity @s[tag=race_prep] run tellraw @s [{"text": "       Race status: ","color": "gray"},{"text": "preparing","color": "gold"}]
execute if entity @s[tag=race_on] run tellraw @s [{"text": "       Race status: ","color": "gray"},{"text": "in progress","color": "green"}]
execute if entity @s[tag=race_end] run tellraw @s [{"text": "       Race status: ","color": "gray"},{"text": "finished","color": "red"}]
tellraw @s ""