fill 21 -13 -31 24 -13 -28 air
fill 22 -14 -30 23 -14 -29 jungle_slab[type=top]
setblock 22 -14 -31 jungle_slab[type=top]
setblock 21 -14 -30 jungle_slab[type=top]
setblock 24 -14 -29 jungle_slab[type=top]
setblock 23 -14 -28 jungle_slab[type=top]
setblock 23 -13 -28 acacia_fence
setblock 22 -13 -31 acacia_fence
setblock 23 -12 -28 chain[axis=y]
setblock 22 -12 -31 chain[axis=y]
playsound block.piston.extend master @a 22 -14 -31 1 1
schedule function game:jungle_target/frame/5 0.5s