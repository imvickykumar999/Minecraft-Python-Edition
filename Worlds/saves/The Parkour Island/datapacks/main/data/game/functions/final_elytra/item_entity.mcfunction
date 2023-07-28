execute as @a[x=1,y=53,z=6,distance=..10] unless entity @e[tag=final_elytra_item] run summon minecraft:item 1 53 6 {Tags:["final_elytra_item","ingame"],Item:{id:"minecraft:elytra",Count:1b,tag:{Enchantments:[{}]}},PickupDelay:-999999999}
execute as @e[tag=final_elytra_item] run data merge entity @s {PickupDelay:-999999999}

execute unless entity @a[x=1,y=53,z=6,distance=..10] as @e[tag=final_elytra_item] run kill @e[tag=final_elytra_item]