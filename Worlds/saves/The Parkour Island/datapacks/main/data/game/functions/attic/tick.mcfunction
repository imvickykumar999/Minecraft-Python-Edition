execute if block 23 38 17 polished_blackstone_button[powered=true] run schedule function game:attic/close 5s
execute if block 23 38 17 polished_blackstone_button[powered=true] run fill 23 38 17 22 39 17 air destroy

execute if block 1 48 7 spruce_pressure_plate[powered=true] unless block 1 48 6 air run fill 1 48 6 1 49 6 air destroy
execute unless block 1 48 7 spruce_pressure_plate[powered=true] if block 1 48 6 air run fill 1 48 6 1 49 6 spruce_fence[east=true,west=true]