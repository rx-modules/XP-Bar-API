# By: rx97
# 06 28 19

scoreboard objectives add xp.temp dummy
scoreboard objectives add xp.input dummy
scoreboard objectives add xp.timer dummy
scoreboard objectives add xp.output dummy
scoreboard objectives add xp.smooth dummy
scoreboard objectives add xp.constants dummy

scoreboard players set #-1 xp.constants -1
scoreboard players set #2 xp.constants 2
scoreboard players set #5 xp.constants 5
scoreboard players set #8 xp.constants 8
scoreboard players set #9 xp.constants 9
scoreboard players set #81 xp.constants 81
scoreboard players set #325 xp.constants 325
scoreboard players set #360 xp.constants 360
scoreboard players set #2220 xp.constants 2220

scoreboard players set $max xp.constants 100
scoreboard players set $scale xp.constants 10
scoreboard players set $timer xp.constants 20
scoreboard players set $smooth xp.constants 8
scoreboard players set $cleanup xp.constants 1
scoreboard players set $loaded xp.constants 1

tellraw @a [{"text": "Setup complete! Run xp:setup to reset all defaults.", "color": "dark_green"}]