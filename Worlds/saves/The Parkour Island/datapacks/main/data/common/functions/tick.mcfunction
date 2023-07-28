execute as @a at @s run function common:trigger

function common:ingame/tick

function common:timer/tick

function common:end/tick

function common:rank/tick

function common:race/tick

function common:training_mode/tick

execute as @a[tag=!joined] at @s run function common:join

execute as @a[team=ingame] run function common:back_to_checkpoint
execute as @a[team=end] run function common:back_to_checkpoint
execute as @a[team=race] run function common:back_to_checkpoint