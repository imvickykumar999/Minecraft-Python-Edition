execute as @a[scores={end_timer=1..}] run scoreboard players add @s end_timer 1

#normal
execute as @a[tag=end,team=ingame,gamemode=!spectator,tag=timer_on] run function common:end/end
execute as @a[scores={end_timer=1..}] run function common:end/show_text

#race
execute as @a[team=race,tag=end,tag=!race_finish,gamemode=!spectator,tag=timer_on] at @s as @a[tag=race_owner,tag=!race_prep,scores={race_timer=1..1}] if score @s raceID = @p raceID as @p run function common:race/end

tag @a remove end