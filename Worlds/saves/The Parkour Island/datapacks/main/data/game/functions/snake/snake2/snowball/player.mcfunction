execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball"}]}] run item replace entity @s hotbar.4 with snowball

execute unless entity @s[x=30,y=-37,z=23,dx=51,dy=27,dz=42] run clear @s snowball
execute unless entity @s[x=30,y=-37,z=23,dx=51,dy=27,dz=42] run tag @s remove snowball