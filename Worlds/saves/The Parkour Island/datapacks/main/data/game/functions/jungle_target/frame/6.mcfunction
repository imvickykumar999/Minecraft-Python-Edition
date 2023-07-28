fill 21 -15 -31 24 -15 -28 air
fill 22 -16 -30 23 -16 -29 jungle_slab[type=top]
setblock 22 -16 -31 jungle_slab[type=top]
setblock 21 -16 -30 jungle_slab[type=top]
setblock 24 -16 -29 jungle_slab[type=top]
setblock 23 -16 -28 jungle_slab[type=top]
setblock 23 -15 -28 acacia_fence
setblock 22 -15 -31 acacia_fence
setblock 23 -14 -28 chain[axis=y]
setblock 22 -14 -31 chain[axis=y]
playsound block.piston.extend master @a 22 -16 -31 1 1
schedule function game:jungle_target/frame/7 8s