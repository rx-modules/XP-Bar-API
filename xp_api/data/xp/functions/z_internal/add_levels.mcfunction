# By: Shraavan97
# 06 18 19

execute if score $levels xp.temp matches 128.. run function xp:z_internal/_tree/al128_512
execute if score $levels xp.temp matches 32..127 run function xp:z_internal/_tree/al32_127
execute if score $levels xp.temp matches 8..31 run function xp:z_internal/_tree/al8_31
execute if score $levels xp.temp matches 1..7 run function xp:z_internal/_tree/al1_7
stopsound @s * minecraft:entity.player.levelup