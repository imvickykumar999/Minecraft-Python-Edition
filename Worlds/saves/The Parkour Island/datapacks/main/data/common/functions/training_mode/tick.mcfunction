execute as @a[tag=enable_flight] run effect give @s invisibility 9999 255 true

execute as @a[scores={snowball_throw=1..},team=training_mode] at @s run function common:training_mode/save_pos/new
execute as @a[scores={ender_pearl_throw=1..},team=training_mode] at @s run function common:training_mode/save_pos/tp

execute as @e[type=snowball] if data entity @s Item.tag.kill run kill @s
execute as @e[type=ender_pearl] if data entity @s Item.tag.kill run kill @s
scoreboard players set @a[scores={snowball_throw=1..}] snowball_throw 0
scoreboard players set @a[scores={ender_pearl_throw=1..}] ender_pearl_throw 0
scoreboard players set @a[scores={ender_pearl_drop=1..}] ender_pearl_drop 0

tag @a remove have_save_pos
execute at @a as @e[tag=save_pos] if score @s ID = @p ID run tag @p add have_save_pos

execute as @a[team=training_mode] at @s run function common:training_mode/items/tick


#check
execute as @a[team=training_mode,tag=!training_mode] run function common:training_mode/join
execute as @a[team=!training_mode,tag=training_mode] run function common:training_mode/leave