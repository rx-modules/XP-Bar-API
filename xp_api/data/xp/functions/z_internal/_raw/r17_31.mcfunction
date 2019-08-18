# By: Shraavan97
# 07 3 19
# 2.5(level^2) - 40.5(level) + 360 

scoreboard players operation $temp xp.temp = $levels xp.temp
scoreboard players operation $temp xp.temp *= $levels xp.temp
scoreboard players operation $temp xp.temp *= #5 xp.constants
scoreboard players operation $temp xp.temp /= #2 xp.constants
scoreboard players operation $points xp.temp += $temp xp.temp

scoreboard players operation $temp xp.temp = $levels xp.temp
scoreboard players operation $temp xp.temp *= #81 xp.constants
scoreboard players operation $temp xp.temp /= #2 xp.constants
scoreboard players operation $points xp.temp -= $temp xp.temp
scoreboard players operation $points xp.temp += #360 xp.constants