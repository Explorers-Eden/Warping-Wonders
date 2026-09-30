scoreboard players remove @s wawo.waypoint_hub.warmup.ticks 1

execute if score @s wawo.waypoint_hub.warmup.damage matches 1.. run return run function wawo:waypoint_hub/properties/teleport/warmup/cancel

execute store result score $warmup_x wawo.technical run data get entity @s Pos[0] 10
execute store result score $warmup_y wawo.technical run data get entity @s Pos[1] 10
execute store result score $warmup_z wawo.technical run data get entity @s Pos[2] 10
scoreboard players operation $warmup_x wawo.technical -= @s wawo.waypoint_hub.warmup.x
scoreboard players operation $warmup_y wawo.technical -= @s wawo.waypoint_hub.warmup.y
scoreboard players operation $warmup_z wawo.technical -= @s wawo.waypoint_hub.warmup.z
execute unless score $warmup_x wawo.technical matches -5..5 run return run function wawo:waypoint_hub/properties/teleport/warmup/cancel
execute unless score $warmup_y wawo.technical matches -15..15 run return run function wawo:waypoint_hub/properties/teleport/warmup/cancel
execute unless score $warmup_z wawo.technical matches -5..5 run return run function wawo:waypoint_hub/properties/teleport/warmup/cancel

execute if score @s wawo.waypoint_hub.warmup.ticks matches ..0 run return run function wawo:waypoint_hub/properties/teleport/warmup/finish

scoreboard players operation $warmup_mod wawo.technical = @s wawo.waypoint_hub.warmup.ticks
scoreboard players operation $warmup_mod wawo.technical %= $20 wawo.technical
execute if score $warmup_mod wawo.technical matches 0 run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

particle minecraft:reverse_portal ~ ~.1 ~ .5 0 .5 0 4
particle minecraft:portal ~ ~1 ~ .3 .5 .3 .5 2

scoreboard players operation $warmup_sec wawo.technical = @s wawo.waypoint_hub.warmup.ticks
scoreboard players add $warmup_sec wawo.technical 19
scoreboard players operation $warmup_sec wawo.technical /= $20 wawo.technical
title @s actionbar [\
{"bold":false,"color":"light_purple","fallback":"Teleporting in","italic":false,"translate":"message.warping_wonders.waypoint_hub.warmup"},\
{"bold":false,"color":"light_purple","italic":false,"text":" "},\
{"bold":false,"color":"light_purple","italic":false,"score":{"name":"$warmup_sec","objective":"wawo.technical"}},\
{"bold":false,"color":"light_purple","italic":false,"text":"..."}\
]
