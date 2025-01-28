$data modify storage eden:waypoint_db waypoints.$(waypoint_id).profile.properties[0].value set from storage eden:temp waypoint.head.properties
data modify entity @n[type=minecraft:item_display,tag=wawo.waypoint_hub.icon,distance=..8] item.components.minecraft:profile.properties[0].value set from storage eden:temp waypoint.head.properties
execute as @n[type=marker,tag=wawo.waypoint_hub.marker,distance=..8] at @s run function wawo:waypoint_hub/gui/remove/barrel_closed

data remove storage eden:temp waypoint.head
