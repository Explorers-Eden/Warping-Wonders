$data modify storage eden:temp waypoint_tp.teleport.x set from storage eden:database waypoints.gui.$(gui_id).slot.13.x
$data modify storage eden:temp waypoint_tp.teleport.y set from storage eden:database waypoints.gui.$(gui_id).slot.13.y
$data modify storage eden:temp waypoint_tp.teleport.z set from storage eden:database waypoints.gui.$(gui_id).slot.13.z
$data modify storage eden:temp waypoint_tp.teleport.dimension set from storage eden:database waypoints.gui.$(gui_id).slot.13.dimension
$data modify storage eden:temp waypoint_tp.teleport.name set from storage eden:database waypoints.gui.$(gui_id).slot.13.name
data modify storage eden:temp waypoint_tp.teleport.uuid set from entity @p[tag=wawo.waypoint.tp] UUID

execute as @p[tag=wawo.waypoint.tp] run function wawo:waypoint_hub/gui/teleport/check_loc with storage eden:temp waypoint_tp.teleport