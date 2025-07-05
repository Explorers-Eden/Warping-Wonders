execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s unless block ~ ~ ~ minecraft:barrel run function wawo:waypoint_hub/break/run
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.spawner] at @s run function wawo:waypoint_hub/place/start with storage eden:settings warping_wonders.waypoint_hub

schedule function wawo:schedules/5t 5t