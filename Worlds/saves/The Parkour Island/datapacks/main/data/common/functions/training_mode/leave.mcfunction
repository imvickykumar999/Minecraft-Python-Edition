title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "Disabled training mode","bold": true,"color": "red"}]
scoreboard players set @s training_mode 0
function common:timer/timer/reset
tag @s remove timer_display
gamemode adventure @s
tag @s remove enable_flight
tag @s remove disable_flight
clear @s
effect clear @s
tag @s remove training_mode