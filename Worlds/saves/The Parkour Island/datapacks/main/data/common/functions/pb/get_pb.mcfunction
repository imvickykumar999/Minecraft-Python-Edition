#if have no pb
execute if score @s tick < @s pb if score @s pb matches 2147483647 run tellraw @s [{"text": "You beat your old PB.","color": "gray"}]

#if get a new pb
execute if score @s tick < @s pb unless score @s pb matches 2147483647 run tellraw @s [{"text": "You beat your old PB. (","color": "gray"},{"score":{"objective":"pb_hour","name":"@s"},"color":"gray"},{"text":" hours ","color":"gray"},{"score":{"objective":"pb_min","name":"@s"},"color":"gray"},{"text":" minutes and ","color":"gray"},{"score":{"objective":"pb_sec","name":"@s"},"color":"gray"},{"text":".","color":"gray"},{"score":{"objective":"pb_dec","name":"@s"},"color":"gray"},{"text":" seconds)","color":"gray"}]

#if not
execute if score @s tick >= @s pb run tellraw @s [{"text": "You didn't beat your PB. (","color": "gray"},{"score":{"objective":"pb_hour","name":"@s"},"color":"gray"},{"text":"  hours ","color":"gray"},{"score":{"objective":"pb_min","name":"@s"},"color":"gray"},{"text":" minutes and ","color":"gray"},{"score":{"objective":"pb_sec","name":"@s"},"color":"gray"},{"text":".","color":"gray"},{"score":{"objective":"pb_dec","name":"@s"},"color":"gray"},{"text":" seconds)","color":"gray"}]

#update pb
execute if score @s tick < @s pb run function common:pb/calc
execute if score @s tick < @s pb run scoreboard players operation @s pb = @s tick