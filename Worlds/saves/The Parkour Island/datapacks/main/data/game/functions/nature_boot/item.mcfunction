execute unless entity @e[tag=boot1_item] if entity @a[x=-70,y=-23,z=3,distance=..20] run summon item -70 -23 3 {Item:{id:"leather_boots",Count:1b,tag:{display:{color:917248},HideFlags:127,Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}]}},Tags:["ingame","boot1_item"],PickupDelay:-32767}
execute if entity @e[tag=boot1_item] unless entity @a[x=-70,y=-23,z=3,distance=..20] run kill @e[tag=boot1_item]
execute as @e[tag=boot1_item] run data merge entity @s {PickupDelay:-999999999}

execute as @a[x=-70,y=-23,z=3,dx=0,dy=0,dz=0,nbt=!{Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] run playsound item.armor.equip_leather master @s ~ ~ ~ 1 1
execute as @a[x=-70,y=-23,z=3,dx=0,dy=0,dz=0,nbt=!{Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] run item replace entity @s armor.feet with leather_boots{display:{color:917248},HideFlags:127,Enchantments:[{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],tag:{Tags:["nature_boot"]}} 1