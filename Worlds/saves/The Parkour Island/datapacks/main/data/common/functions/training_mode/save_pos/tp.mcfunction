execute as @e[tag=save_pos] if score @s ID = @p ID run tp @p @s
effect give @s instant_health 1 20 true
effect give @s resistance 1 20 true