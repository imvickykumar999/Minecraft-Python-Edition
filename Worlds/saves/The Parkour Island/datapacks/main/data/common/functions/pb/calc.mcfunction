scoreboard players operation @s pb_tick = @s tick
scoreboard players operation @s pb_tick /= #hour_conv const
scoreboard players operation @s pb_hour = @s pb_tick

scoreboard players operation @s pb_tick = @s tick
scoreboard players operation @s pb_tick %= #hour_conv const
scoreboard players operation @s pb_tick /= #min_conv const
scoreboard players operation @s pb_min = @s pb_tick

scoreboard players operation @s pb_tick = @s tick
scoreboard players operation @s pb_tick %= #hour_conv const
scoreboard players operation @s pb_tick %= #min_conv const
scoreboard players operation @s pb_tick /= #sec_conv const
scoreboard players operation @s pb_sec = @s pb_tick

scoreboard players operation @s pb_tick = @s tick
scoreboard players operation @s pb_tick %= #hour_conv const
scoreboard players operation @s pb_tick %= #min_conv const
scoreboard players operation @s pb_tick %= #sec_conv const
scoreboard players operation @s pb_tick /= #dec_conv const
scoreboard players operation @s pb_dec = @s pb_tick