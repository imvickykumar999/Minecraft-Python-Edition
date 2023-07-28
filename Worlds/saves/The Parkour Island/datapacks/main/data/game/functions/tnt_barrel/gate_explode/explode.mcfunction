setblock 13 37 0 air destroy
setblock 12 36 0 dark_oak_planks
particle explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0.05 1
playsound entity.generic.explode master @a ~ ~ ~ 1 1
execute as @a[x=10,y=36,z=-2,dx=4,dy=2,dz=4,advancements={game:ee/tnt=false}] at @s run function game:advancements/ee/tnt
schedule function game:tnt_barrel/gate_explode/reset 6s