fill 21 -12 -31 24 -12 -28 air
fill 22 -13 -30 23 -13 -29 jungle_slab[type=top]
setblock 22 -13 -31 jungle_slab[type=top]
setblock 21 -13 -30 jungle_slab[type=top]
setblock 24 -13 -29 jungle_slab[type=top]
setblock 23 -13 -28 jungle_slab[type=top]
setblock 23 -12 -28 acacia_fence
setblock 22 -12 -31 acacia_fence
setblock 23 -11 -28 chain[axis=y]
setblock 22 -11 -31 chain[axis=y]
playsound block.piston.extend master @a 22 -13 -31 1 1
schedule function game:jungle_target/frame/4 0.5s