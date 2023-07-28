scoreboard players enable @a new_race
execute unless score @s new_race matches 0 run function common:race/create
execute unless score @s new_race matches 0 run scoreboard players set @s new_race 0

scoreboard players enable @a join_race
execute unless score @s join_race matches 0 run function common:race/join
execute unless score @s join_race matches 0 run scoreboard players set @s join_race 0