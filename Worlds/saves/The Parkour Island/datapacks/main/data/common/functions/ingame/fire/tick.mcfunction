scoreboard players set @a on_fire 0
execute as @a at @s run function common:ingame/fire/is_on_fire
execute as @a at @s unless predicate common:fire/is_sneaking positioned ~ ~1.8 ~ run function common:ingame/fire/is_on_fire
execute as @a at @s if predicate common:fire/is_sneaking positioned ~ ~1.5 ~ run function common:ingame/fire/is_on_fire

effect clear @a fire_resistance
effect give @a[predicate=common:fire/on_fire,scores={on_fire=0..0}] fire_resistance 1 11 true