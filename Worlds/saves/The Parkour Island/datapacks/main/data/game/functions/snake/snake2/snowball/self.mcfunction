execute if entity @s[tag=!cd] run data merge entity @s {PortalCooldown:12}
execute if entity @s[tag=!cd] run tag @s add cd

execute if entity @s[nbt={PortalCooldown:1}] at @s run function game:snake/snake2/snowball/remove