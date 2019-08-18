execute if score $levels xp.temp matches 512.. run xp add @s 512 levels
execute if score $levels xp.temp matches 512.. run scoreboard players remove $levels xp.temp 512
execute if score $levels xp.temp matches 256..512 run xp add @s 256 levels
execute if score $levels xp.temp matches 256..512 run scoreboard players remove $levels xp.temp 256
execute if score $levels xp.temp matches 128..512 run xp add @s 128 levels
execute if score $levels xp.temp matches 128..512 run scoreboard players remove $levels xp.temp 128

execute if score $levels xp.temp matches 512.. run function xp:z_internal/_tree/al128_512