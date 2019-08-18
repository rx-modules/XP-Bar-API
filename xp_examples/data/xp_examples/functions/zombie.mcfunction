# By: Shraavan97
# 07 04 19


execute store result score @s xp.input run data get entity @e[sort=nearest, limit=1, type=zombie] Health
execute store result score $max xp.health run data get entity @e[sort=nearest, limit=1, type=zombie] Attributes[{"Name":"generic.maxHealth"}].Base
scoreboard players operation @s xp.input *= #100 xp.example
scoreboard players operation @s xp.input /= $max xp.health

function xp:levels_and_bar
function xp:smooth