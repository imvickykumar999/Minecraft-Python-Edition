execute as @a[x=-13,y=-6,z=47,distance=..10] unless entity @e[tag=disc_item] run summon minecraft:item -13 -6 47 {Tags:["disc_item","ingame"],Item:{id:"minecraft:music_disc_otherside",Count:1b},PickupDelay:-999999999}
execute as @e[tag=disc_item] run data merge entity @s {PickupDelay:-999999999}

execute unless entity @a[x=-13,y=-6,z=47,distance=..10] as @e[tag=disc_item] run kill @e[tag=disc_item]



execute as @a[x=-13,y=-6,z=47,dx=0,dy=0,dz=0] unless entity @s[nbt={Inventory:[{id:"minecraft:music_disc_otherside"}]}] run item replace entity @s hotbar.4 with minecraft:music_disc_otherside{CanPlaceOn:["jukebox"]} 1


execute as @a[nbt={Inventory:[{id:"minecraft:music_disc_otherside",tag:{CanPlaceOn:["jukebox"]}}]}] unless entity @s[x=-21,y=-7,z=41,dx=13,dy=9,dz=16] run clear @s music_disc_otherside{CanPlaceOn:["jukebox"]}