# By: rx97
# 07 4 19

function xp:z_internal/store_info

execute unless score @s xp.temp matches 2..3 run scoreboard players operation @s xp.output = $points xp.temp
execute unless score @s xp.temp matches 2..3 run scoreboard players operation @s xp.output /= $scale xp.constants
execute if score @s xp.temp matches 2 run scoreboard players operation @s xp.output = $levels xp.temp
execute if score @s xp.temp matches 3 run scoreboard players operation @s xp.output = $points xp.temp

execute unless score @s xp.temp matches 2..3 run xp set @s 0 levels
execute unless score @s xp.temp matches 2..3 if score $levels xp.temp matches 1.. run function xp:z_internal/add_levels