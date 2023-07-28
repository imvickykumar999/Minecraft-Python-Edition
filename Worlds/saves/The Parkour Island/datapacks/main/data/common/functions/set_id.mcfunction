function common:random
scoreboard players operation @s ID = @s random
execute as @a if score @s ID = @p ID as @p run function common:set_id