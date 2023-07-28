#already started
execute if entity @s[tag=race_owner,tag=race_on] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "The race is in progress.","color": "gray"}]

#already finished
execute if entity @s[tag=race_owner,tag=race_end] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "The race is over.","color": "gray"}]

#if another race is at there
execute if entity @s[tag=race_owner,tag=race_prep] if entity @a[tag=race_owner,tag=race_on,x=12,y=-49.0625,z=-49,dx=0,dy=0,dz=0] run tellraw @s [{"text": "[","color": "white"},{"text": "Race","color": "green"},{"text": "] ","color": "white"},{"text": "Please wait...","color": "gray"}]

#normal
execute if entity @s[tag=race_owner,tag=race_prep] unless entity @a[tag=race_owner,tag=race_on,x=12,y=-49.0625,z=-49,dx=0,dy=0,dz=0] run scoreboard players set @s race_timer 0
execute if entity @s[tag=race_owner,tag=race_prep] unless entity @a[tag=race_owner,tag=race_on,x=12,y=-49.0625,z=-49,dx=0,dy=0,dz=0] run tag @s add race_on
execute if entity @s[tag=race_owner,tag=race_prep] unless entity @a[tag=race_owner,tag=race_on,x=12,y=-49.0625,z=-49,dx=0,dy=0,dz=0] run tag @s remove race_prep