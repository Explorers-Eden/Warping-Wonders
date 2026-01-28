$execute if score @s wawo.waypoint_hub.head matches 0 run data modify entity @s item.components.minecraft:profile.properties set from storage eden:database waypoints.hubs.$(waypoint_id).profile.properties
$execute if score @s wawo.waypoint_hub.head matches 1.. run data modify entity @s item.components.minecraft:profile.properties[0].value set from storage eden:database waypoints.icons.$(database_id)

$data modify storage eden:database waypoints.hubs.$(waypoint_id).icon set from entity @s item.components.minecraft:profile.properties[0].value

data remove storage eden:temp waypoint.head