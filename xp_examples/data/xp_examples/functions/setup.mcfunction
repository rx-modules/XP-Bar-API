# By: rx97
# 07 04 19

scoreboard objectives add xp.example dummy
scoreboard objectives add xp.bow minecraft.used:minecraft.bow
scoreboard objectives add xp.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add xp.health dummy
scoreboard players add $example xp.example 0
scoreboard players set #100 xp.example 100
scoreboard players set #432 xp.example 432

tellraw @a ["",{"color":"dark_green","hoverEvent":{"action":"show_text","value":{"extra":[{"color":"light_purple","text":"Reach me on discord: @rx#1284"},{"color":"light_purple","text":""}],"text":""}},"text":"[ XP Bar Examples ]"},{"color":"gray","text":" - by shraavan97"},{"color":"none","text":"\n\n"},{"clickEvent":{"action":"run_command","value":"/function xp_examples:set/bow"},"color":"gold","hoverEvent":{"action":"show_text","value":{"extra":[{"color":"gray","text":"XP Bar showcases the current amount of ammo the player has. When the player depletes that ammo, the xp bar refills slowly."},{"color":"gray","text":" Click to showcase this example"}],"text":""}},"text":"[ Bow Quiver ] "},{"clickEvent":{"action":"run_command","value":"/function xp_examples:set/zombie"},"color":"gold","hoverEvent":{"action":"show_text","value":{"extra":[{"color":"gray","text":"XP Bar showcases the nearest zombie's hp onto the bar. Fight some zombies and watch the xp bar and levels reflect their health."},{"color":"gray","text":" Click to showcase this example"}],"text":""}},"text":"[ Zombie HP ] "},{"clickEvent":{"action":"run_command","value":"/function xp_examples:set/elytra"},"color":"gold","hoverEvent":{"action":"show_text","value":{"extra":[{"color":"gray","text":"XP Bar showcases your elytra durability. Fly and watch your wing's lifespan!"},{"color":"gray","text":" Click to showcase this example"}],"text":""}},"text":"[ Elytra Durability ] "},{"clickEvent":{"action":"run_command","value":"/function xp_examples:cleanup"},"color":"red","hoverEvent":{"action":"show_text","value":{"extra":[{"color":"gray","text":"Cleans up examples"},{"color":"gray","text":" Click to get rid of the stuff I made"}],"text":""}},"text":"\n[ Destroy ] "}]