$data modify storage eden:waypoint_db waypoints.$(id).waypoint_name set from entity @s CustomName
$data modify storage eden:waypoint_db waypoints.$(id).pos.x set value $(x)
$data modify storage eden:waypoint_db waypoints.$(id).pos.y set value $(y)
$data modify storage eden:waypoint_db waypoints.$(id).pos.z set value $(z)
$data modify storage eden:waypoint_db waypoints.$(id).id set value $(id)
$data modify storage eden:waypoint_db waypoints.$(id).pos.dimension set value "$(dimension)"
$data modify storage eden:waypoint_db waypoints.$(id).dimension_name set value "$(dimension_name)"
$data modify storage eden:waypoint_db waypoints.$(id).profile set value $(profile)