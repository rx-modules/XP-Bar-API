# By: Shraavan97
# 07 3 19
# 4.5(level^2) - 162.5(level) + 2220

scoreboard players operation $temp xp.temp = $levels xp.temp
scoreboard players operation $temp xp.temp *= $levels xp.temp
scoreboard players operation $temp xp.temp *= #9 xp.constants
scoreboard players operation $temp xp.temp /= #2 xp.constants
scoreboard players operation $points xp.temp += $temp xp.temp

scoreboard players operation $temp xp.temp = $levels xp.temp
scoreboard players operation $temp xp.temp *= #325 xp.constants
scoreboard players operation $temp xp.temp /= #2 xp.constants
scoreboard players operation $points xp.temp -= $temp xp.temp
scoreboard players operation $points xp.temp += #2220 xp.constants