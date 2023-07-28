execute positioned 64 -14 48 run setblock ~ ~ ~ air destroy
execute positioned 64 -14 48 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.5 1
schedule function game:snake/snake2/target/destory/tg4/2 2t

tag @e[tag=s2tg4,tag=!reverse] add destroyed