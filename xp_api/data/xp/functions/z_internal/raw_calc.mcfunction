# By: Shraavan97
# 07 3 19

# formulas to calculate total points
# 0 - 16    : level^2 + 8(level)
# 17 - 31   : 2.5(level^2) - 40.5(level) + 360 
# 32 and on : 4.5(level^2) - 162.5(level) + 2220


execute if score $levels xp.temp matches 0..16 run function xp:z_internal/_raw/r0_16
execute if score $levels xp.temp matches 17..31 run function xp:z_internal/_raw/r17_31
execute if score $levels xp.temp matches 32.. run function xp:z_internal/_raw/r32_