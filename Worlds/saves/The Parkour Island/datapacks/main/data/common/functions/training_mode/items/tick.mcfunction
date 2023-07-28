function common:training_mode/items/hotbar

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl",tag:{Tags:["save_pos_item"]}}]}] run function common:training_mode/save_pos/remove

execute if entity @s[tag=disable_flight,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Tags:["flight_item"]}}]}] run function common:training_mode/flight/enable
execute if entity @s[tag=enable_flight,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Tags:["flight_item"]}}]}] run function common:training_mode/flight/disable

execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["start_timer_item"]}}]}] run function common:timer/timer/start
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["start_timer_item"]}}]}] run item replace entity @s armor.head with air
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["stop_timer_item"]}}]}] run function common:timer/timer/stop
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["stop_timer_item"]}}]}] run item replace entity @s armor.head with air
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["reset_timer_item"]}}]}] run function common:timer/timer/reset
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["reset_timer_item"]}}]}] run item replace entity @s armor.head with air
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["restart_timer_item"]}}]}] run function common:timer/timer/restart
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["restart_timer_item"]}}]}] run item replace entity @s armor.head with air

execute if entity @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:air"}]}] run item replace entity @s armor.head with air
execute if entity @s unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:air"}]}] run item replace entity @s weapon.offhand with air