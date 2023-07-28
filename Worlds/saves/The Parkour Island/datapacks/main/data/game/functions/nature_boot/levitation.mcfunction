execute as @a[x=-46,y=-9,z=-5,dx=5,dy=3,dz=5,nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] unless score boot1_levitation ingame_timer matches 1.. run scoreboard players set boot1_levitation ingame_timer 1
execute if score boot1_levitation ingame_timer matches 1.. run scoreboard players add boot1_levitation ingame_timer 2
execute unless score boot1_levitation ingame_timer matches 1.. if block -43 -10 -3 diamond_block run fill -43 -10 -3 -44 -10 -2 diamond_ore
execute if score boot1_levitation ingame_timer matches 1.. unless block -43 -10 -3 diamond_block run fill -43 -10 -3 -44 -10 -2 diamond_block destroy

execute if score boot1_levitation ingame_timer matches 1.. if entity @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]},x=-44,y=4,z=-3,dx=1,dy=5,dz=1] unless block -44 8 -1 barrier run fill -44 7 -1 -43 9 -1 barrier
execute unless entity @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]},x=-44,y=4,z=-3,dx=1,dy=5,dz=1] if block -44 8 -1 barrier run fill -44 7 -1 -43 9 -1 air

execute if score boot1_levitation ingame_timer matches 1.. run effect give @a[x=-44,y=-9,z=-3,dx=1,dy=20.5,dz=1,nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}] levitation 1 6 true
execute if score boot1_levitation ingame_timer matches 1.. run particle end_rod -43.0 0.5 -2.0 0.3 4 0.3 0.02 2 normal @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]}]
execute if score boot1_levitation ingame_timer matches 1.. if entity @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]},x=-44,y=7,z=-3,dx=1,dy=3,dz=1] unless block -44 10 -3 air run fill -44 10 -3 -43 10 -2 air destroy
execute unless entity @a[nbt={Inventory:[{Slot:100b,tag:{tag:{Tags:["nature_boot"]}}}]},x=-44,y=7,z=-3,dx=1,dy=3,dz=1] if block -44 10 -3 air run fill -44 10 -3 -43 10 -2 jungle_planks destroy
effect clear @a[x=-44,y=12.5,z=-3,dx=1,dy=0,dz=1] levitation
execute if score boot1_levitation ingame_timer matches 200.. run scoreboard players set boot1_levitation ingame_timer 0