$data modify storage eden:database waypoints.hubs.$(waypoint_id).profile.properties[0].value set from storage eden:temp waypoint.head.properties
data modify entity @n[type=minecraft:item_display,tag=wawo.waypoint_hub.icon,distance=..8] item.components.minecraft:profile.properties[0].value set from storage eden:temp waypoint.head.properties

data remove storage eden:temp waypoint.head
