#racer init
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run gamemode adventure @s
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run effect clear @s
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run spawnpoint @s 47 3 -53 45.0
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run tag @s remove race_finish
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run effect give @s invisibility 30 1 true
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run function common:timer/timer/reset
execute unless score @s race_timer matches 1.. run scoreboard players set @s race_timer 402
execute unless score @s race_timer matches 1.. as @a[team=race] if score @s raceID = @p raceID run tp @s 47 2.9375 -53 45.0 30.0


#timer
execute if score @s race_timer matches 2.. run scoreboard players remove @s race_timer 1



#lock position
execute if score @s race_timer matches 2.. as @a[team=race] if score @s raceID = @p raceID run tp @s 47 2.9375 -53



#show title
execute if score @s race_timer matches 400 as @a[team=race] if score @s raceID = @p raceID run title @s clear
execute if score @s race_timer matches 400 as @a[team=race] if score @s raceID = @p raceID run title @s times 0 60 10
execute if score @s race_timer matches 400 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "Race starting...","bold": true,"color": "green"}]

#countdown
execute if score @s race_timer matches 302 as @a[team=race] if score @s raceID = @p raceID run title @s times 0 70 20

execute if score @s race_timer matches 302 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "15","color": "green","bold": true}]
execute if score @s race_timer matches 302 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 282 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "14","color": "green","bold": true}]
execute if score @s race_timer matches 282 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 262 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "13","color": "green","bold": true}] 
execute if score @s race_timer matches 262 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 242 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "12","color": "green","bold": true}] 
execute if score @s race_timer matches 242 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 222 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "11","color": "green","bold": true}] 
execute if score @s race_timer matches 222 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 202 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "10","color": "green","bold": true}] 
execute if score @s race_timer matches 202 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 182 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "9","color": "green","bold": true}]  
execute if score @s race_timer matches 182 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 162 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "8","color": "green","bold": true}]  
execute if score @s race_timer matches 162 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 142 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "7","color": "green","bold": true}]  
execute if score @s race_timer matches 142 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 122 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "6","color": "green","bold": true}]  
execute if score @s race_timer matches 122 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 102 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "5","color": "green","bold": true}]  
execute if score @s race_timer matches 102 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 82 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "4","color": "green","bold": true}]   
execute if score @s race_timer matches 82 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 62 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "3","color": "yellow","bold": true}]   
execute if score @s race_timer matches 62 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 42 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "2","color": "yellow","bold": true}]   
execute if score @s race_timer matches 42 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 22 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "1","color": "red","bold": true}]   
execute if score @s race_timer matches 22 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1

execute if score @s race_timer matches 2 as @a[team=race] if score @s raceID = @p raceID run title @s title [{"text": "Go!","color": "white","bold": true}]   
execute if score @s race_timer matches 2 as @a[team=race] if score @s raceID = @p raceID at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 2



#when it begins
execute if score @s race_timer matches 2 as @a[team=race] if score @s raceID = @p raceID run function common:timer/timer/restart
#reset race rank
execute if score @s race_timer matches 2 run scoreboard players set @s race_rank_glb 1



#all done
#check
tag @s remove race_processing
execute if score @s race_timer matches 1 as @a[team=race] if score @s raceID = @p raceID unless entity @s[tag=race_finish] as @a[team=race,tag=race_owner] if score @s raceID = @p raceID run tag @s add race_processing
#if all done
execute if score @s race_timer matches 1 unless entity @s[tag=race_processing] as @a[team=race] if score @s raceID = @p raceID run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "Everyone has finished the race.","color": "gray"}]
execute if score @s race_timer matches 1 unless entity @s[tag=race_processing] as @a[team=race] if score @s raceID = @p raceID run scoreboard players set @s race_rank_txt 1
execute if score @s race_timer matches 1 unless entity @s[tag=race_processing] run tag @s add race_end
execute if score @s race_timer matches 1 unless entity @s[tag=race_processing] run tag @s remove race_on