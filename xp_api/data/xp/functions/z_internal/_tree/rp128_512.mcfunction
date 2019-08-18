execute if score $diff xp.temp matches ..-512 run xp add @s -512 points
execute if score $diff xp.temp matches ..-512 run scoreboard players add $diff xp.temp 512

execute if score $diff xp.temp matches ..-256 run xp add @s -256 points
execute if score $diff xp.temp matches ..-256 run scoreboard players add $diff xp.temp 256

execute if score $diff xp.temp matches ..-128 run xp add @s -128 points
execute if score $diff xp.temp matches ..-128 run scoreboard players add $diff xp.temp 128