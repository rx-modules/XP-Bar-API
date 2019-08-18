# By: Shraavan97
# 07 04 19

# fix for empty scoreboards
scoreboard players add @s xp.bow 0

execute unless entity @s[tag=xp.bow.init] run scoreboard players set @s xp.input 100
execute unless entity @s[tag=xp.bow.init] run function xp:instant
tag @s add xp.bow.init

scoreboard players remove @s[scores={xp.bow=1..}] xp.input 10
execute if score @s xp.bow matches 1.. run function xp:smooth
scoreboard players set @s[scores={xp.bow=1..}] xp.bow 0

function xp:get

tag @s[scores={xp.output=..0}] add xp.bow.empty
execute if entity @s[tag=xp.bow.empty] run function xp:stop
scoreboard players set @s[tag=xp.bow.empty] xp.input 100
execute if entity @s[tag=xp.bow.empty] run function xp:linear
tag @s[tag=xp.bow.empty] remove xp.smooth

replaceitem entity @s[tag=!xp.bow.empty] weapon.offhand arrow 1
replaceitem entity @s[tag=xp.bow.empty] weapon.offhand air
playsound minecraft:block.anvil.use master @s[scores={xp.output=98..99}] ~ ~ ~ 2 2
tag @s[scores={xp.output=98..}] remove xp.bow.empty