
execute unless entity @a[distance=..6,nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] unless block ~ ~ ~ #game:plant run function game:nature_boot/marker/clone_dead

execute unless entity @a[distance=..3,nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] if block ~ ~ ~ #game:plant run function game:nature_boot/marker/clone_dead