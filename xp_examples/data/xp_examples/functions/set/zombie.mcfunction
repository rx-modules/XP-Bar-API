# By: rx97
# 07 04 19

scoreboard players set $example xp.example 2
scoreboard players set $smooth xp.constants 4
scoreboard players set $timer xp.constants 150

tellraw @a [{"text": "You have set the zombie xp example. Start fighting some zombies.", "color": "gray"}]