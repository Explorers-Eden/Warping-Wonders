$data modify storage eden:temp waypoint.teleport.x set from storage eden:database waypoints.hubs.$(id).pos.x
$data modify storage eden:temp waypoint.teleport.y set from storage eden:database waypoints.hubs.$(id).pos.y
$data modify storage eden:temp waypoint.teleport.z set from storage eden:database waypoints.hubs.$(id).pos.z
$data modify storage eden:temp waypoint.teleport.dimension set from storage eden:database waypoints.hubs.$(id).pos.dimension
$data modify storage eden:temp waypoint.teleport.name set from storage eden:database waypoints.hubs.$(id).waypoint_name

data modify storage eden:temp waypoint.teleport.uuid set from entity @s UUID
data modify storage eden:temp waypoint.teleport.msg_range set from storage eden:settings warping_wonders.waypoint_hub.min_distance
data modify storage eden:temp waypoint.teleport.exp_cost set from storage eden:settings warping_wonders.waypoint_hub.exp_cost