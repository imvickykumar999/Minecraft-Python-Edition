execute as @e[tag=save_pos] if score @s ID = @p ID run tellraw @p [{"text": "Savestate has been deleted.","color": "gray"}]
execute as @e[tag=save_pos] if score @s ID = @p ID run kill @s