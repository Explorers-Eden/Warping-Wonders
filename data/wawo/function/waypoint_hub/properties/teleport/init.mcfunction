schedule function wawo:waypoint_hub/properties/teleport/init 5t

#cancel teleport warm-ups of players who disconnected during them
execute as @a[tag=wawo.waypoint_hub.warmup.active,scores={wawo.waypoint_hub.warmup.left=1..}] run function wawo:waypoint_hub/properties/teleport/warmup/clear
scoreboard players reset @a[scores={wawo.waypoint_hub.warmup.left=1..}] wawo.waypoint_hub.warmup.left

execute as @a[scores={wawo.waypoint_hub.menu.teleport=1..}] if data storage eden:settings warping_wonders.waypoint_hub{warmup:0} run function wawo:waypoint_hub/properties/teleport/exec
execute as @a[scores={wawo.waypoint_hub.menu.teleport=1..}] unless data storage eden:settings warping_wonders.waypoint_hub{warmup:0} run function wawo:waypoint_hub/properties/teleport/warmup/start
execute as @a[scores={wawo.waypoint_hub.menu.teleport=1..}] run scoreboard players set @s wawo.waypoint_hub.menu.teleport 0