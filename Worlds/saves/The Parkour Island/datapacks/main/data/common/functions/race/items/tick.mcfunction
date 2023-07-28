function common:race/items/hotbar

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Tags:["start_race_item"]}}]}] run function common:race/start

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Tags:["end_race_item"]}}]}] run function common:race/stop

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Tags:["back_cp"]}}]}] run kill @s

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Tags:["race_rank_item"]}}]}] run scoreboard players set @s race_rank_txt 1

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{Tags:["race_info_item"]}}]}] run function common:race/show_info

execute if entity @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:air"}]}] run item replace entity @s armor.head with air