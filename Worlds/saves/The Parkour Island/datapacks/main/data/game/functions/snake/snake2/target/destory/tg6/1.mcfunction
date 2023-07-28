execute positioned 73 -18 54 run setblock ~ ~ ~ air destroy
execute positioned 73 -18 54 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.5 1
schedule function game:snake/snake2/target/destory/tg6/2 2t

tag @e[tag=s2tg6,tag=!reverse] add destroyed