execute at @e[tag=save_pos] if score @e[tag=save_pos,limit=1,sort=nearest] ID = @s ID run kill @e[tag=save_pos,limit=1,sort=nearest]
summon marker ~ ~ ~ {Tags:["save_pos","save_pos_new"]}
scoreboard players operation @e[tag=save_pos_new,limit=1,sort=nearest] ID = @s ID
data modify entity @e[tag=save_pos_new,limit=1,sort=nearest] Rotation set from entity @s Rotation
tag @e[tag=save_pos_new,limit=1,sort=nearest] remove save_pos_new
tellraw @s [{"text": "Savestate set.","color": "gray"}]