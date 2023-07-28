execute if entity @a[x=67,y=-12,z=40,distance=..10,gamemode=!spectator] unless entity @e[tag=froggy] run summon frog 67 -12 40 {Pumpkin:false,PersistenceRequired:true,Invulnerable:true,Tags:["froggy"],Rotation:[135.0f,0.0f]}

execute as @e[tag=froggy] at @s run data merge entity @s {Motion:[0,0,0]}

execute unless entity @a[x=67,y=-12,z=40,distance=..10,gamemode=!spectator] if entity @e[tag=froggy] as @e[tag=froggy] at @s run function game:snow_golem/kill