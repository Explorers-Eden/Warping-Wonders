$execute as @n[type=marker,tag=wawo.waypoint_hub.marker] unless score @s wawo.waypoint_hub.gui.head matches 0 run data modify storage eden:temp waypoint.head.properties set from storage eden:database waypoints.icons.$(id)
execute if score @n[type=marker,tag=wawo.waypoint_hub.marker] wawo.waypoint_hub.gui.head matches 0 run function wawo:waypoint_hub/interaction/change_icon/get_playerhead
$data modify storage eden:temp waypoint.head.slot set from storage eden:database waypoints.hubs.$(waypoint_id).gui.slot
$data modify storage eden:temp waypoint.head.page set from storage eden:database waypoints.hubs.$(waypoint_id).gui.page
function wawo:waypoint_hub/interaction/change_icon/set_head with storage eden:temp waypoint.head