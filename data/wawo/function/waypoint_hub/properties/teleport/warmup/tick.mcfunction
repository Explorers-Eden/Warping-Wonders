execute as @a[tag=wawo.waypoint_hub.warmup.active,scores={wawo.waypoint_hub.warmup.left=1..}] run function wawo:waypoint_hub/properties/teleport/warmup/clear
execute as @a[tag=wawo.waypoint_hub.warmup.active] at @s run function wawo:waypoint_hub/properties/teleport/warmup/tick_player

execute if entity @a[tag=wawo.waypoint_hub.warmup.active] run schedule function wawo:waypoint_hub/properties/teleport/warmup/tick 1t
