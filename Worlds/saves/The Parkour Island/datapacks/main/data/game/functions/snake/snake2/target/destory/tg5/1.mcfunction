execute positioned 68 -16 52 run setblock ~ ~ ~ air destroy
execute positioned 68 -16 52 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.5 1
schedule function game:snake/snake2/target/destory/tg5/2 2t

tag @e[tag=s2tg5,tag=!reverse] add destroyed