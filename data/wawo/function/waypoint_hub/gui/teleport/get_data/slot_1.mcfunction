$data modify storage eden:waypoint_tp teleport.x set from storage eden:waypoint_tp waypoints.$(gui_id).slot.1.x
$data modify storage eden:waypoint_tp teleport.y set from storage eden:waypoint_tp waypoints.$(gui_id).slot.1.y
$data modify storage eden:waypoint_tp teleport.z set from storage eden:waypoint_tp waypoints.$(gui_id).slot.1.z
$data modify storage eden:waypoint_tp teleport.dimension set from storage eden:waypoint_tp waypoints.$(gui_id).slot.1.dimension
$data modify storage eden:waypoint_tp teleport.name set from storage eden:waypoint_tp waypoints.$(gui_id).slot.1.name
data modify storage eden:waypoint_tp teleport.uuid set from entity @p[tag=wawo.waypoint.tp] UUID

execute as @p[tag=wawo.waypoint.tp] run function wawo:waypoint_hub/gui/teleport/check_loc with storage eden:waypoint_tp teleport