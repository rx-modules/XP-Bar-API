# By: Shraavan97
# 06 18 19

execute if score $diff xp.temp matches 1024.. run function xp:z_internal/_tree/ap1024_
execute if score $diff xp.temp matches 128..1023 run function xp:z_internal/_tree/ap128_512
execute if score $diff xp.temp matches 32..127 run function xp:z_internal/_tree/ap32_127
execute if score $diff xp.temp matches 8..31 run function xp:z_internal/_tree/ap8_31
execute if score $diff xp.temp matches 1..7 run function xp:z_internal/_tree/ap1_7