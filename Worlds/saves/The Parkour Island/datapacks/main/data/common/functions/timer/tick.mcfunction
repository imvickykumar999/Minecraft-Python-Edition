execute store result score #player_count1 const run execute if entity @a
execute unless score #player_count1 const = #player_count2 const run scoreboard players reset * timer_sidebar
execute store result score #player_count2 const run execute if entity @a

execute as @a[tag=timer_on] run scoreboard players add @s tick 1
execute as @a run function common:timer/calculate
execute as @a[tag=timer_display] run function common:timer/display