team add race "race"
team modify race collisionRule never
team modify race friendlyFire false
team modify race seeFriendlyInvisibles true
team modify race color green

scoreboard objectives add raceID dummy "raceID"
scoreboard objectives add race_timer dummy "race_timer"
scoreboard objectives add race_rank dummy "race_rank"
scoreboard objectives add race_rank_txt dummy "race_rank_txt"
scoreboard objectives add race_rank_glb dummy "race_rank_glb"
scoreboard objectives add join_race trigger [{"text": "join race","color": "yellow","bold": true}]
scoreboard objectives add new_race trigger [{"text": "new race","color": "yellow","bold": true}]