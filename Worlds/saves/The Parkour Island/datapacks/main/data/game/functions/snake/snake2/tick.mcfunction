execute unless entity @e[tag=snake2snake] if entity @a[x=30,y=-37,z=23,dx=51,dy=27,dz=42,gamemode=!spectator] run function game:snake/snake2/summon
execute unless entity @a[x=30,y=-37,z=23,dx=51,dy=27,dz=42,gamemode=!spectator] if entity @e[tag=snake2snake] run function game:snake/snake2/clear

execute as @a[tag=snowball] at @s run function game:snake/snake2/snowball/player
execute as @e[type=snowball,x=30,y=-37,z=23,dx=51,dy=27,dz=42] run function game:snake/snake2/snowball/self

execute if entity @e[tag=s2tg1,tag=destroyed] if entity @e[tag=s2tg2,tag=destroyed] if entity @e[tag=s2tg3,tag=destroyed] if entity @e[tag=s2tg4,tag=destroyed] if entity @e[tag=s2tg5,tag=destroyed] if entity @e[tag=s2tg6,tag=destroyed] unless entity @e[tag=reverse] run function game:snake/snake2/reverse

tag @e[tag=sr] remove sr
execute as @e[tag=snake2snake] if score @s snake2timer matches 1.. run tag @s add sr
execute unless entity @e[tag=sr] if entity @e[tag=reverse] run function game:snake/snake2/restore

function game:snake/snake2/target/detect

