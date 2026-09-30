function wawo:waypoint_hub/properties/teleport/warmup/clear

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2
title @s actionbar [\
{"bold":false,"color":"red","fallback":"Teleport cancelled.","italic":false,"translate":"message.warping_wonders.waypoint_hub.warmup_cancelled"}\
]
