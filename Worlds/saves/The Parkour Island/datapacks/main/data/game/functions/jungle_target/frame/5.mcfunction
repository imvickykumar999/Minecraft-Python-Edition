fill 21 -14 -31 24 -14 -28 air
fill 22 -15 -30 23 -15 -29 jungle_slab[type=top]
setblock 22 -15 -31 jungle_slab[type=top]
setblock 21 -15 -30 jungle_slab[type=top]
setblock 24 -15 -29 jungle_slab[type=top]
setblock 23 -15 -28 jungle_slab[type=top]
setblock 23 -14 -28 acacia_fence
setblock 22 -14 -31 acacia_fence
setblock 23 -13 -28 chain[axis=y]
setblock 22 -13 -31 chain[axis=y]
playsound block.piston.extend master @a 22 -15 -31 1 1
schedule function game:jungle_target/frame/6 0.5s