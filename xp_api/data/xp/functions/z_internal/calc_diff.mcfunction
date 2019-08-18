# By: Shraavan97
# 06 28 19

execute unless score @s xp.temp matches 2 run scoreboard players operation $in xp.temp = $points xp.temp
execute if score @s xp.temp matches 2 run scoreboard players operation $in xp.temp = $levels xp.temp

scoreboard players operation $diff xp.temp = @s xp.input
execute unless score @s xp.temp matches 2..3 run scoreboard players operation $diff xp.temp *= $scale xp.constants
scoreboard players operation $diff xp.temp -= $in xp.temp

scoreboard players operation $current xp.temp = $in xp.temp
execute unless score @s xp.temp matches 2..3 run scoreboard players operation $current xp.temp /= $scale xp.constants

# tellraw @s[tag=debug] [{"text":"current: "}, {"score":{"name":"$current", "objective":"xp.temp"}}]
# tellraw @s[tag=debug] [{"text":"in: "}, {"score":{"name":"$in", "objective":"xp.temp"}}]