# By: rx97
# 06 18 19

execute if score $diff xp.temp matches ..-1024 run function xp:z_internal/_tree/rp1024_
execute if score $diff xp.temp matches -1023..-128 run function xp:z_internal/_tree/rp128_512
execute if score $diff xp.temp matches -127..-32 run function xp:z_internal/_tree/rp32_127
execute if score $diff xp.temp matches -31..-8 run function xp:z_internal/_tree/rp8_31
execute if score $diff xp.temp matches -7..-1 run function xp:z_internal/_tree/rp1_7