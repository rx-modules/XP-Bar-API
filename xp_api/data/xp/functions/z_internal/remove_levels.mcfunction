# By: rx97
# 06 18 19

execute if score $levels xp.temp matches ..-128 run function xp:z_internal/_tree/rl128_512
execute if score $levels xp.temp matches -127..-32 run function xp:z_internal/_tree/rl32_127
execute if score $levels xp.temp matches -31..-8 run function xp:z_internal/_tree/rl8_31
execute if score $levels xp.temp matches -7..-1 run function xp:z_internal/_tree/rl1_7
stopsound @s * minecraft:entity.player.levelup