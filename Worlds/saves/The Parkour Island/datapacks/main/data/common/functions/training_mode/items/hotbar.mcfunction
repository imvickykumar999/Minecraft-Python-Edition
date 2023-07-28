item replace entity @s hotbar.8 with minecraft:snowball{display:{Name:'[{"text":"Set savestate","color":"white","italic":false}]'},Tags:["save_pos_item"],HideFlags:34,kill:1} 1

item replace entity @s[tag=!have_save_pos] hotbar.7 with air
item replace entity @s[tag=have_save_pos] hotbar.7 with minecraft:ender_pearl{display:{Name:'[{"text":"Tp to savestate","color":"white","italic":false}]'},Tags:["save_pos_item"],HideFlags:34,kill:1} 1

item replace entity @s[tag=disable_flight] hotbar.4 with minecraft:elytra{display:{Name:'[{"text":"Toggle flight","color":"white","italic":false}]'},Tags:["flight_item"],HideFlags:34} 1
item replace entity @s[tag=enable_flight] hotbar.4 with minecraft:elytra{display:{Name:'[{"text":"Toggle flight","color":"white","italic":false}]'},Tags:["flight_item"],HideFlags:34,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1

item replace entity @s[scores={tick=0..0}] hotbar.2 with air
item replace entity @s[scores={tick=1..}] hotbar.2 with minecraft:leather_helmet{display:{Name:'[{"text":"Reset","color":"black","bold": true,"italic": false},{"text":" timer","color":"white","bold": false,"italic": false}]',color:0},Tags:["reset_timer_item"],HideFlags:34} 1

item replace entity @s[tag=!timer_on] hotbar.0 with minecraft:leather_helmet{display:{Name:'[{"text":"Start","color":"green","bold": true,"italic": false},{"text":" timer","color":"white","bold": false,"italic": false}]',color:65318},Tags:["start_timer_item"],HideFlags:34} 1
item replace entity @s[tag=timer_on] hotbar.0 with minecraft:leather_helmet{display:{Name:'[{"text":"Stop","color":"red","bold": true,"italic": false},{"text":" timer","color":"white","bold": false,"italic": false}]',color:16711680},Tags:["stop_timer_item"],HideFlags:34} 1

item replace entity @s[scores={tick=0..0}] hotbar.1 with air
item replace entity @s[scores={tick=1..}] hotbar.1 with minecraft:leather_helmet{display:{Name:'[{"text":"Restart","color":"gold","bold": true,"italic": false},{"text":" timer","color":"white","bold": false,"italic": false}]',color:16758528},Tags:["restart_timer_item"],HideFlags:34} 1

item replace entity @s hotbar.3 with air

item replace entity @s hotbar.5 with air

item replace entity @s hotbar.6 with air