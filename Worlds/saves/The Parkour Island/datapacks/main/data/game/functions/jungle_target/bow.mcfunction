execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.4 with bow{Unbreakable:1b,HideFlags:127}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}},nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run item replace entity @s inventory.0 with arrow
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:bow"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] run clear @s arrow

execute unless entity @s[x=18,y=-14,z=-35,distance=..3] run tag @s remove bow
execute unless entity @s[x=18,y=-14,z=-35,distance=..3] run clear @s bow