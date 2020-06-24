# By: rx97
# 06 28 19

# store levels to memory
execute store result score $levels xp.temp run xp query @s levels

# mess with bar (1003 points)
# i used this python code to figure this out
# > for level in range(100, 1000):
# >     print('level:', level, 'points:', 9 * level - 158)
execute unless score @s xp.temp matches 3 run xp set @s 129 levels
execute store result score $points xp.temp run xp query @s points
execute if score @s xp.temp matches 3 run function xp:z_internal/raw_calc