title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "Enabled training mode","bold": true,"color": "green"}]
function common:timer/timer/reset
tag @s add timer_display
tag @s add disable_flight
tag @s add training_mode