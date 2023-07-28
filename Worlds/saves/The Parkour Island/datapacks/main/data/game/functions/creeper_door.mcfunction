execute if block 14 6 -15 jungle_pressure_plate[powered=true] unless score iron_door ingame_timer matches 1.. run scoreboard players set iron_door ingame_timer 1
execute if score iron_door ingame_timer matches 1.. run scoreboard players add iron_door ingame_timer 1
execute if score iron_door ingame_timer matches 300.. run scoreboard players set iron_door ingame_timer 0

execute if score iron_door ingame_timer matches 2 run setblock 17 3 -17 redstone_block
execute if score iron_door ingame_timer matches 100 run setblock 17 3 -17 stone
execute if score iron_door ingame_timer matches 40 run summon minecraft:creeper 4 11 -15 {ignited:1b,Fuse:60,ExplosionRadius:3,Invulnerable:1b,Tags:["creeper"]}
execute if score iron_door ingame_timer matches 40 run setblock 2 10 -14 air
execute if score iron_door ingame_timer matches 50 run setblock 2 10 -14 redstone_block
execute if score iron_door ingame_timer matches 78 as @e[tag=creeper,limit=1] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Colors:[I;1441536],Type:3b,Flicker:1b},{Colors:[I;16760576],Type:0b},{Colors:[I;16760576],Type:4b}]}}},Rotation:[-90.0f,0.0f]} 
execute if score iron_door ingame_timer matches 78 run tp @e[tag=creeper] ~ -1000 ~
execute if score iron_door ingame_timer matches 78 run kill @e[tag=creeper]
execute if score iron_door ingame_timer matches 80 run fill 2 3 -13 2 9 -17 air 
execute if score iron_door ingame_timer matches 80 run clone -4 -31 -43 -4 -25 -39 2 3 -17
execute if score iron_door ingame_timer matches 80 run fill 3 3 -14 4 3 -14 air 
execute if score iron_door ingame_timer matches 230 run clone -7 -31 -43 -7 -31 -39 2 3 -17
execute if score iron_door ingame_timer matches 230 run fill 3 3 -14 4 3 -14 redstone_wire[east=side,north=none,south=none,west=side]
execute if score iron_door ingame_timer matches 234 run clone -7 -30 -43 -7 -30 -39 2 4 -17
execute if score iron_door ingame_timer matches 234 run clone 2 1 -15 2 2 -15 2 4 -15
execute if score iron_door ingame_timer matches 238 run clone -7 -29 -43 -7 -29 -39 2 5 -17
execute if score iron_door ingame_timer matches 238 run clone 2 1 -15 2 2 -15 2 4 -15
execute if score iron_door ingame_timer matches 242 run clone -7 -28 -43 -7 -28 -39 2 6 -17
execute if score iron_door ingame_timer matches 242 run clone 2 1 -15 2 2 -15 2 4 -15
execute if score iron_door ingame_timer matches 246 run clone -7 -27 -43 -7 -27 -39 2 7 -17
execute if score iron_door ingame_timer matches 250 run clone -7 -26 -43 -7 -26 -39 2 8 -17
execute if score iron_door ingame_timer matches 254 run clone -7 -25 -43 -7 -25 -39 2 9 -17