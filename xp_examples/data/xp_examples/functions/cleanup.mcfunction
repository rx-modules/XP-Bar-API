# By: rx97
# 07 04 19

scoreboard objectives remove xp.example
scoreboard objectives remove xp.bow
scoreboard objectives remove xp.damage
scoreboard objectives remove xp.health
scoreboard players reset $example xp.example
scoreboard players reset #100 xp.example
scoreboard players reset #432 xp.example

tellraw @a {"text": "You can now remove the xp_examples datapack (/reload to undo)", "color": "dark_green"}
function xp:setup