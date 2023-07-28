execute positioned 53 -17 46 run setblock ~ ~ ~ air destroy
execute positioned 53 -17 46 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.5 1
schedule function game:snake/snake2/target/destory/tg1/2 2t

tag @e[tag=s2tg1,tag=!reverse] add destroyed