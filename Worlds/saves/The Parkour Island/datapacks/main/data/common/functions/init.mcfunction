#timer
function common:timer/init

#rank
function common:rank/init

#pb
function common:pb/init

#race
function common:race/init

#end
function common:end/init

#training mode
function common:training_mode/init

#player ID
scoreboard objectives add random dummy "random"
scoreboard objectives add ID dummy "ID"

#constant
scoreboard objectives add const dummy "const"
function common:const

#fire damage
scoreboard objectives add on_fire dummy "on_fire"

#farmland protect
scoreboard objectives add on_farmland dummy "on_farmland"
scoreboard objectives add motion_y dummy "motion_y"

#trigger
scoreboard objectives add restart trigger [{"text": "Restart","color": "yellow","bold": true}]
scoreboard objectives add lobby trigger [{"text": "Back to lobby","color": "yellow","bold": true}]

#team
team add ingame "ingame"
team modify ingame collisionRule never
team modify ingame friendlyFire false
team modify ingame color white

team add end "end"
team modify end collisionRule never
team modify end friendlyFire false
team modify end color gold