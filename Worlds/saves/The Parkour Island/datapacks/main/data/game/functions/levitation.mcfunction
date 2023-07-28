effect give @a[x=12,y=-5,z=42,dx=1,dy=7.5,dz=1] levitation 1 6 true
effect clear @a[x=11,y=4.5,z=41,dx=3,dy=0,dz=3] levitation
particle end_rod 13.0 0 43.0 0.3 2 0.3 0.02 1 normal

effect give @a[x=64,y=-20,z=35,dx=0,dy=27.5,dz=0] levitation 1 6 true
effect clear @a[x=64,y=8.5,z=35,dx=0,dy=0,dz=0] levitation
particle end_rod 64 -5.75 35 0.1 7 0.1 0.02 2 normal @a

effect give @a[x=-24,y=-6,z=20,dx=0,dy=7,dz=0] levitation 1 6 true
effect clear @a[x=-24,y=2,z=20,dx=0,dy=0,dz=0] levitation
particle end_rod -24 -2.5 20 0.1 2 0.1 0.02 1 normal

effect give @a[x=41,y=5,z=37,dx=0,dy=9,dz=0] levitation 1 6 true
execute as @a[x=40,y=14,z=36,dx=2,dy=1,dz=2] unless entity @s[x=41,y=14,z=37,dx=0,dy=1,dz=0] run effect clear @s levitation
particle end_rod 41 8.5 37 0.1 2.4 0.1 0.02 1 normal

effect give @a[x=-2,y=10,z=-12,dx=0,dy=8,dz=0] levitation 1 6 true
execute as @a[x=-2,y=20,z=-12,dx=0,dy=1,dz=0] run effect clear @s levitation
particle end_rod -2 15 -12 0.1 2.4 0.1 0.02 1 normal

effect give @a[x=2,y=14,z=-15,dx=1,dy=9,dz=1] levitation 1 6 true
effect clear @a[x=2,y=24,z=-15,dx=1,dy=1,dz=1] levitation
particle end_rod 3.0 19 -14.0 0.3 2.4 0.3 0.02 1 normal

effect give @a[x=18,y=37,z=7,dx=1,dy=5,dz=1] levitation 1 6 true
effect clear @a[x=18,y=44.5,z=7,dx=1,dy=0,dz=1] levitation
particle end_rod 19.0 39.7 8.0 0.3 1.6 0.3 0.02 1 normal
execute if entity @a[x=18,y=41,z=7,dx=1,dy=1,dz=1] unless block 19 42 8 air run fill 18 42 7 19 42 8 air destroy
execute unless entity @a[x=18,y=41,z=7,dx=1,dy=1,dz=1] unless block 19 42 8 blackstone_slab[type=top] run fill 18 42 7 19 42 8 blackstone_slab[type=top]

effect give @a[x=-10,y=-30,z=33,dx=0,dy=7,dz=1] levitation 1 6 true
effect clear @a[x=-10,y=-22,z=33,dx=0,dy=1,dz=1] levitation
particle end_rod -9.5 -26 34.0 0.1 2 0.3 0.02 1 normal

effect give @a[x=20,y=3,z=5,dx=0,dy=18,dz=0] levitation 1 6 true
effect clear @a[x=20,y=22,z=5,dx=0,dy=0,dz=0] levitation
particle end_rod 20 12.5 5 0.1 5 0.1 0.02 1 normal