execute as @a[distance=..10] unless entity @e[tag=end_elytra_item] run summon minecraft:item ~ ~ ~ {Tags:["end_elytra_item","ingame"],Item:{id:"minecraft:elytra",Count:1b,tag:{Enchantments:[{}]}},PickupDelay:-999999999}
execute as @e[tag=end_elytra_item] run data merge entity @s {PickupDelay:-999999999}

execute unless entity @a[distance=..10] as @e[tag=end_elytra_item] run kill @e[tag=end_elytra_item]