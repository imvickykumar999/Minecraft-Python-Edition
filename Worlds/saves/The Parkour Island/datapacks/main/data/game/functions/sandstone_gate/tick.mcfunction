execute if score sandstone_gate ingame_timer matches 1.. run scoreboard players add sandstone_gate ingame_timer 1
execute if score sandstone_gate ingame_timer matches 200.. run scoreboard players set sandstone_gate ingame_timer 0

execute if score sandstone_gate ingame_timer matches 2 positioned ~ 7 ~ run function game:sandstone_gate/destroy
execute if score sandstone_gate ingame_timer matches 5 positioned ~ 6 ~ run function game:sandstone_gate/destroy
execute if score sandstone_gate ingame_timer matches 8 positioned ~ 5 ~ run function game:sandstone_gate/destroy

execute if score sandstone_gate ingame_timer matches 152 positioned ~ 5 ~ run function game:sandstone_gate/setblock
execute if score sandstone_gate ingame_timer matches 155 positioned ~ 6 ~ run function game:sandstone_gate/setblock
execute if score sandstone_gate ingame_timer matches 158 positioned ~ 7 ~ run function game:sandstone_gate/setblock