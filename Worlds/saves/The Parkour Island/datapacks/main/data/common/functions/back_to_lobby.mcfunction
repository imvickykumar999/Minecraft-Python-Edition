function common:timer/timer/reset
team join ingame @s[team=!training_mode]
playsound entity.enderman.teleport master @s ~ ~ ~ 9999 1
clear @s
effect clear @s
effect give @s resistance 1 5 true
tp @s 55 2.9375 -65 0.0 30.0
execute at @s run spawnpoint @s ~ 3 ~ ~