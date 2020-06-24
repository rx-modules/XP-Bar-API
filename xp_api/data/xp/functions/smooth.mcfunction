# By: rx97
# 06 28 19

function xp:z_internal/check_max
function xp:z_internal/store_info
function xp:z_internal/calc_diff

# divides the difference by a constant. expotential curve
execute unless score @s xp.smooth matches -2147483648.. run scoreboard players operation $smooth xp.temp = $smooth xp.constants
execute if score @s xp.smooth matches -2147483648.. run scoreboard players operation $smooth xp.temp = @s xp.smooth

execute if score $diff xp.temp matches 1.. if score $diff xp.temp <= $smooth xp.temp run scoreboard players operation $diff xp.temp = $smooth xp.temp
scoreboard players operation $diff xp.temp /= $smooth xp.temp

# the tag deals with looping
execute unless score $diff xp.temp matches 0 run tag @s add xp.smooth
execute if score $diff xp.temp matches 0 run tag @s remove xp.smooth
tag @s[tag=xp.smooth] add xp.lock
tag @s[tag=!xp.smooth] remove xp.lock

function xp:z_internal/set_bar
execute if score $cleanup xp.constants matches 1 unless entity @s[tag=xp.lock] run function xp:z_internal/cleanup