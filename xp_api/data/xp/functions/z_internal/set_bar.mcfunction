# By: Shraavan97
# 06 28 19

execute if score @s xp.temp matches 1 run scoreboard players operation $levels xp.temp = $current xp.temp
execute if score @s xp.temp matches 2 run scoreboard players operation $levels xp.temp += $diff xp.temp

execute unless score @s xp.temp matches 2 if score $diff xp.temp matches 1.. run function xp:z_internal/add_points
execute unless score @s xp.temp matches 2 if score $diff xp.temp matches ..-1 run function xp:z_internal/remove_points

execute unless score @s xp.temp matches 3 run xp set @s 0 levels
execute unless score @s xp.temp matches 3 if score $levels xp.temp matches 1.. run function xp:z_internal/add_levels