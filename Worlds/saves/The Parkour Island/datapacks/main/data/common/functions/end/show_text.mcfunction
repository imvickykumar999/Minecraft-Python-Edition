execute if score @s end_timer matches 1 run title @s times 0 60 20
execute if score @s end_timer matches 1..3 run title @s title [{"text":"T","color":"green","bold":true}]
execute if score @s end_timer matches 4..6 run title @s title [{"text":"Th","color":"green","bold":true}]
execute if score @s end_timer matches 7..9 run title @s title [{"text":"The","color":"green","bold":true}]
execute if score @s end_timer matches 10..12 run title @s title [{"text":"The ","color":"green","bold":true}]
execute if score @s end_timer matches 13..15 run title @s title [{"text":"The E","color":"green","bold":true}]
execute if score @s end_timer matches 16..18 run title @s title [{"text":"The En","color":"green","bold":true}]
execute if score @s end_timer matches 19..21 run title @s title [{"text":"The End","color":"green","bold":true}]

execute if score @s end_timer matches 150..150 run tag @s add rank
execute if score @s end_timer matches 150..150 run scoreboard players set @s end_timer 0