fill 21 -11 -31 24 -11 -28 air
fill 22 -12 -30 23 -12 -29 jungle_slab[type=top]
setblock 22 -12 -31 jungle_slab[type=top]
setblock 21 -12 -30 jungle_slab[type=top]
setblock 24 -12 -29 jungle_slab[type=top]
setblock 23 -12 -28 jungle_slab[type=top]
setblock 23 -11 -28 acacia_fence
setblock 22 -11 -31 acacia_fence
setblock 23 -10 -28 chain[axis=y]
playsound block.piston.extend master @a 22 -12 -31 1 1
schedule function game:jungle_target/frame/3 0.5s