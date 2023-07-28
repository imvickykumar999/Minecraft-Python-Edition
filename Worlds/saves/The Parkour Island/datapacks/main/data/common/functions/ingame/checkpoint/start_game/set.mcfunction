#common
execute rotated as @s run spawnpoint @s ~ ~ ~ ~
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 9999 2
tag @s remove init_plate
advancement revoke @s from game:root

#normal
team join ingame @s[team=!training_mode,team=!race]
title @s[team=!training_mode,team=!race] actionbar {"text":"Time started!","color":"gold","bold":true}
effect clear @s[team=!training_mode,team=!race]
execute as @s[team=!training_mode,team=!race] run function common:timer/timer/restart

#race
title @s[team=race] actionbar {"text":"Checkpoint!","color":"gold","bold":true}

#
clear @s tnt{CanPlaceOn:["redstone_block"]}