$data modify storage eden:temp waypoint.teleport.x set from storage eden:database waypoints.hubs.$(id).pos.x
$data modify storage eden:temp waypoint.teleport.y set from storage eden:database waypoints.hubs.$(id).pos.y
$data modify storage eden:temp waypoint.teleport.z set from storage eden:database waypoints.hubs.$(id).pos.z
$data modify storage eden:temp waypoint.teleport.dimension set from storage eden:database waypoints.hubs.$(id).pos.dimension
data modify storage eden:temp waypoint.teleport.uuid set from entity @s UUID