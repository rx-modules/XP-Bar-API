execute store result score $elytra xp.temp run data get entity @s Inventory[{id:"minecraft:elytra", Slot:102b}].tag.Damage
scoreboard players operation @s xp.input = #432 xp.example
scoreboard players operation @s xp.input -= $elytra xp.temp
scoreboard players operation @s xp.input *= #100 xp.example
scoreboard players operation @s xp.input /= #432 xp.example
function xp:instant