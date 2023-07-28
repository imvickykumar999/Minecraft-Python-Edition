execute positioned 53 -15 54 run setblock ~ ~ ~ air destroy
execute positioned 53 -15 54 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.5 1
schedule function game:snake/snake2/target/destory/tg2/2 2t

tag @e[tag=s2tg2,tag=!reverse] add destroyed