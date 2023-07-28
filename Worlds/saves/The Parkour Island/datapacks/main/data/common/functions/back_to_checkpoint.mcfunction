execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",tag:{Tags:["back_cp"]}}]}] run clear @s leather_helmet{Tags:["back_cp"]}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",tag:{Tags:["back_cp"]}}]}] unless entity @s[tag=race_owner] run item replace entity @s hotbar.8 with minecraft:leather_helmet{display:{Name:'[{"text":"back to checkpoint","color":"red","bold":true,"italic":false}]'},Tags:["back_cp"]}

execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["back_cp"]}}]}] run kill @s
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{Tags:["back_cp"]}}]}] run clear @s leather_helmet{Tags:["back_cp"]}