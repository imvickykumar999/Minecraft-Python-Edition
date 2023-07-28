function common:timer/timer/stop

function common:rank/get_rank

playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 9999 1

#public text
tellraw @a [{"selector":"@s","color":"gold"},{"text":" has completed the map.","color":"gray"}]
tellraw @a [{"text":"Time: ","color":"gray"},{"score":{"objective":"hour","name":"@s"},"color":"gold"},{"text":" hours ","color":"gray"},{"score":{"objective":"min","name":"@s"},"color":"gold"},{"text":" minutes and ","color":"gray"},{"score":{"objective":"sec","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"dec","name":"@s"},"color":"gold"},{"text":" seconds.","color":"gray"}]

#pb
function common:pb/get_pb

scoreboard players set @s end_timer 1
tag @s remove end
team join end @s