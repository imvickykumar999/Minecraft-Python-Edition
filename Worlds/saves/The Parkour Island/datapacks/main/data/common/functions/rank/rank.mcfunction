execute as @s[scores={rank_timer=5..5}] run title @s times 0 100 30
execute as @s[scores={rank_timer=5..5}] run title @s clear
execute as @s[scores={rank_timer=5..26}] run title @s title [{"text": ""}]
execute as @s[scores={rank_timer=5..10}] run title @s subtitle [{"text": "R"}]
execute as @s[scores={rank_timer=5..5}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100000 0.5
execute as @s[scores={rank_timer=11..16}] run title @s subtitle [{"text": "Ra"}]
execute as @s[scores={rank_timer=11..11}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100000 0.5
execute as @s[scores={rank_timer=17..22}] run title @s subtitle [{"text": "Ran"}]
execute as @s[scores={rank_timer=17..17}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100000 0.5
execute as @s[scores={rank_timer=23..28}] run title @s subtitle [{"text": "Rank"}]
execute as @s[scores={rank_timer=23..23}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100000 0.5

execute as @s[scores={rank_timer=40..54}] run title @s title [{"text": "✮"}]
execute as @s[scores={rank_timer=40..40}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @s[scores={rank_timer=55..69,rank=2..}] run title @s title [{"text": "✮✮"}]
execute as @s[scores={rank_timer=55..55,rank=2..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @s[scores={rank_timer=70..84,rank=3..}] run title @s title [{"text": "✮✮✮"}]
execute as @s[scores={rank_timer=70..70,rank=3..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @s[scores={rank_timer=85..99,rank=4..}] run title @s title [{"text": "✮✮✮✮"}]
execute as @s[scores={rank_timer=85..85,rank=4..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

execute as @s[scores={rank_timer=100..100}] run title @s times 0 70 30
execute as @s[scores={rank_timer=100..120,rank=5..}] run title @s title [{"text": "✮✮✮✮✮"}]
execute as @s[scores={rank_timer=100..100,rank=5..}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute as @s[scores={rank_timer=100..120,rank=4..4}] run title @s title [{"text": "✮✮✮✮✩"}]
execute as @s[scores={rank_timer=100..120,rank=3..3}] run title @s title [{"text": "✮✮✮✩✩"}]
execute as @s[scores={rank_timer=100..120,rank=2..2}] run title @s title [{"text": "✮✮✩✩✩"}]
execute as @s[scores={rank_timer=100..120,rank=1..1}] run title @s title [{"text": "✮✩✩✩✩"}]

execute as @s[scores={rank_timer=200..}] run tag @s remove rank