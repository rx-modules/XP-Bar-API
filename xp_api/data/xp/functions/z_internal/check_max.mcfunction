# By: Shraavan97
# 06 28 19

# ensure stupidity is saved
execute unless score @s xp.temp matches 2..3 if score @s xp.input > $max xp.constants run scoreboard players operation @s xp.input = $max xp.constants
execute unless score @s xp.temp matches 2..3 if score @s xp.input matches ..-1 run scoreboard players set @s xp.input 0