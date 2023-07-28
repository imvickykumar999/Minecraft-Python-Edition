function game:nature_boot/item
execute as @e[tag=boot1_marker] at @s run function game:nature_boot/marker/self

execute as @a[x=-83,y=-37,z=-34,dx=58,dy=33,dz=59,nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] at @s run function game:nature_boot/boot

execute as @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] unless entity @s[x=-83,y=-37,z=-34,dx=58,dy=33,dz=59] unless entity @s[x=-45,y=-5,z=-4,dx=3,dy=15,dz=3] at @s run function game:nature_boot/remove_boot

function game:nature_boot/levitation

effect give @a[nbt=!{Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]},x=-44,y=0,z=-3,dx=1,dy=0,dz=1] slow_falling 1 0 true

