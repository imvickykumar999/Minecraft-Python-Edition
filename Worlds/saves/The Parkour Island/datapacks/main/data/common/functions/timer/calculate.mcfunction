scoreboard players operation @s tick_calc = @s tick
scoreboard players operation @s tick_calc /= #hour_conv const
scoreboard players operation @s hour = @s tick_calc

scoreboard players operation @s tick_calc = @s tick
scoreboard players operation @s tick_calc %= #hour_conv const
scoreboard players operation @s tick_calc /= #min_conv const
scoreboard players operation @s min = @s tick_calc

scoreboard players operation @s tick_calc = @s tick
scoreboard players operation @s tick_calc %= #hour_conv const
scoreboard players operation @s tick_calc %= #min_conv const
scoreboard players operation @s tick_calc /= #sec_conv const
scoreboard players operation @s sec = @s tick_calc

scoreboard players operation @s tick_calc = @s tick
scoreboard players operation @s tick_calc %= #hour_conv const
scoreboard players operation @s tick_calc %= #min_conv const
scoreboard players operation @s tick_calc %= #sec_conv const
scoreboard players operation @s tick_calc /= #dec_conv const
scoreboard players operation @s dec = @s tick_calc

scoreboard players operation @s tick_calc = @s tick
scoreboard players operation @s tick_calc /= #sec_conv const
scoreboard players operation @s timer_sidebar = @s tick_calc

execute if score @s min matches 1.. if score @s sec matches 0..9 run scoreboard players set @s display_zero1 0
execute if score @s min matches 0 run scoreboard players reset @s display_zero1
execute if score @s sec matches 10.. run scoreboard players reset @s display_zero1

execute if score @s hour matches 1.. if score @s min matches 0..9 run scoreboard players set @s display_zero2 0
execute if score @s hour matches 0 run scoreboard players reset @s display_zero2
execute if score @s min matches 10.. run scoreboard players reset @s display_zero2