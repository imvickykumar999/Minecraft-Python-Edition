function common:ingame/saturation
function common:ingame/kill_item
function common:ingame/fire/tick
function common:ingame/farmland/tick
execute as @a at @s run function common:ingame/checkpoint/set_tag

execute positioned 59 17 -71 run function common:ingame/end_elytra/tick