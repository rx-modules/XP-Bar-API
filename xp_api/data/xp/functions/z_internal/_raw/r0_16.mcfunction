# By: rx97
# 07 3 19
# level^2 + 8(level)

scoreboard players operation $temp xp.temp = $levels xp.temp
scoreboard players operation $temp xp.temp *= $levels xp.temp
scoreboard players operation $points xp.temp += $temp xp.temp

scoreboard players operation $temp xp.temp = $levels xp.temp
scoreboard players operation $temp xp.temp *= #8 xp.constants
scoreboard players operation $points xp.temp += $temp xp.temp