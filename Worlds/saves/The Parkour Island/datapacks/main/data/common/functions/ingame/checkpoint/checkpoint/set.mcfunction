execute rotated as @s run spawnpoint @s ~ ~ ~ ~
title @s[team=!training_mode] actionbar {"text":"Checkpoint!","color":"gold","bold": true}
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 9999 2
tag @s remove init_plate