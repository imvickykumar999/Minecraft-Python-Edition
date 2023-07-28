scoreboard players set r_math_min random 100000
scoreboard players set r_math_max random 999999

scoreboard players operation r_math_min random -= r_math_max random
scoreboard players add r_math_min random 1

summon marker ~ ~ ~ {Tags:["random_marker"]}
summon marker ~ ~ ~ {Tags:["random_marker"]}

scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 1
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 2
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 4
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 8
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 16
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 32
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 64
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 128
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 256
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 512
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 1024
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 2048
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 4096
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 8192
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 16384
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 32768
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 65536
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 131072
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 262144
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 524288
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 1048576
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 2097152
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 4194304
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 8388608
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 16777216
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 33554432
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 67108864
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 134217728
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 268435456
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 536870912
scoreboard players add @e[tag=random_marker,limit=1,sort=random] random 1073741824

scoreboard players operation @s random = @e[tag=random_marker,limit=1] random
scoreboard players operation @s random %= r_math_min random
scoreboard players operation @s random += r_math_max random

scoreboard players operation r_math_min random += r_math_max random
scoreboard players remove r_math_min random 1

kill @e[tag=random_marker]
