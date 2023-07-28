execute as @a[tag=jumper] unless entity @s[x=-29,y=-53,z=7,dx=39,dy=58,dz=43] run tag @s remove jumper
execute as @a[x=-4,y=5,z=28,dx=9,dy=2,dz=8,tag=!jumper] run tag @s add jumper

execute as @a[x=-29,y=-53,z=7,dx=39,dy=58,dz=43,tag=jumper] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ rail unless block ~ ~-1 ~ powered_rail run function game:jumper/kill