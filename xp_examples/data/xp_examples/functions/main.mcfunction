# By: Shraavan97
# 07 04 19

execute if score $example xp.example matches 1 as @a at @s run function xp_examples:bow
execute if score $example xp.example matches 2 as @a at @s run function xp_examples:zombie
execute if score $example xp.example matches 3 as @a at @s run function xp_examples:elytra

execute if score $example xp.example matches 1..4 at @a as @e[type=!player, distance=..10] run data merge entity @s {DeathTime:-81}