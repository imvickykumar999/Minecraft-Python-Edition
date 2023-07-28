execute if block 2 -7 28 minecraft:oak_pressure_plate[powered=true] unless score slime_change ingame_timer matches 1.. run scoreboard players set slime_change ingame_timer 1
execute if score slime_change ingame_timer matches 1.. run scoreboard players add slime_change ingame_timer 1

execute if score slime_change ingame_timer matches 1.. if block -10 -14 27 brown_wool run fill -10 -14 27 -9 -14 28 slime_block destroy
execute unless score slime_change ingame_timer matches 1.. if block -10 -14 27 slime_block run fill -10 -14 27 -9 -14 28 brown_wool destroy

execute if score slime_change ingame_timer matches 200.. run scoreboard players set slime_change ingame_timer 0