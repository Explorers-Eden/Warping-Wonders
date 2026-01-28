$execute if data storage eden:database waypoints.hubs.$(waypoint_id){trust:[$(playername)]} run return fail

$execute if data storage eden:database waypoints.hubs.$(waypoint_id).trust[0] run data modify storage eden:database waypoints.hubs.$(waypoint_id).trust append value ", "
$data modify storage eden:database waypoints.hubs.$(waypoint_id).trust append from storage eden:temp waypoint.head.playername

item modify entity @s[gamemode=!creative] weapon.mainhand [{"function": "minecraft:set_count","count": -1,"add": true}]
data remove storage eden:temp waypoint.head