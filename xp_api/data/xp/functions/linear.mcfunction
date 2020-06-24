# By: rx97
# 06 28 19

function xp:z_internal/check_max
function xp:z_internal/store_info
function xp:z_internal/calc_diff

# divides the difference by a decreasing timer
scoreboard players add @s xp.timer 0
scoreboard players operation @s[scores={xp.timer=0}] xp.timer = $timer xp.constants

scoreboard players operation $diff xp.temp /= @s xp.timer

# the tag deals with looping
execute unless score $diff xp.temp matches 0 run tag @s add xp.linear
execute if score $diff xp.temp matches 0 run tag @s remove xp.linear
tag @s[tag=xp.linear] add xp.lock
tag @s[tag=!xp.linear] remove xp.lock

function xp:z_internal/set_bar
execute if score $cleanup xp.constants matches 1 unless entity @s[tag=xp.lock] run function xp:z_internal/cleanup 

# handles the rest of the timing stuff
scoreboard players remove @s[scores={xp.timer=1..}] xp.timer 1
tag @s[scores={xp.timer=..0}] remove xp.linear