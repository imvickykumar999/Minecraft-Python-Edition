execute as @a[tag=race_owner,tag=race_on] at @s run function common:race/processing

execute as @a[tag=race_owner,scores={race_rank_txt=1..}] at @s run function common:race/show_rank

execute as @a[tag=race_owner] at @s run function common:race/items/tick