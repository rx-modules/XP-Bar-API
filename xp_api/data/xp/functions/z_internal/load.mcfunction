tellraw @a [{"text": "[ XP Bar API ]", "color": "dark_green", "hoverEvent": {"action": "show_text", "value": {"text": "", "extra":[{"text": "Reach me on discord: @rx#1284", "color": "light_purple"}]}}}, {"text": " - by ", "color": "gray"}, {"text": "rx97", "color": "gray"}]

scoreboard objectives add xp.constants dummy
execute unless score $loaded xp.constants matches 1 run function xp:setup