playsound entity.experience_orb.pickup master @a 18 -14 -35 1 1
fill 22 -11 -30 23 -11 -29 jungle_slab[type=top]
setblock 22 -11 -31 jungle_slab[type=top]
setblock 21 -11 -30 jungle_slab[type=top]
setblock 24 -11 -29 jungle_slab[type=top]
setblock 23 -11 -28 jungle_slab[type=top]
setblock 23 -10 -28 acacia_fence
setblock 23 -9 -28 chain[axis=y]
playsound block.piston.extend master @a 22 -11 -31 1 1
schedule function game:jungle_target/frame/2 0.5s