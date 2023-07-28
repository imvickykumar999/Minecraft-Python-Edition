execute if block ~-82 ~-8 ~21 #game:plant if entity @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]},distance=..6] run clone ~-82 ~-8 ~21 ~-82 ~-8 ~21 ~ ~ ~

execute unless block ~-82 ~-8 ~21 #game:plant run clone ~-82 ~-8 ~21 ~-82 ~-8 ~21 ~ ~ ~

tag @s add cloned