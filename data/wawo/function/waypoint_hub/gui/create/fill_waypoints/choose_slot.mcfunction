
execute unless data storage eden:waypoint_db waypoints.$(waypoint_id)

$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).properties set from storage eden:waypoint_db waypoints.$(waypoint_id).profile.properties[0].value
$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).waypoint_id set value $(waypoint_id)
$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).slot set value $(slot)

$execute if data storage eden:waypoint_db waypoints.$(waypoint_id).gui{page: $(page)} if data storage eden:waypoint_db waypoints.$(waypoint_id).gui{slot: $(slot)} run data modify storage eden:waypoint_tp waypoints.$(gui_id).slot.$(slot) set from storage eden:waypoint_db waypoints.$(waypoint_id).pos
$execute if data storage eden:waypoint_db waypoints.$(waypoint_id).gui{page: $(page)} if data storage eden:waypoint_db waypoints.$(waypoint_id).gui{slot: $(slot)} run data modify storage eden:waypoint_tp waypoints.$(gui_id).slot.$(slot).name set from storage eden:waypoint_db waypoints.$(waypoint_id).waypoint_name_escaping

$execute if data storage eden:waypoint_db waypoints.$(waypoint_id).gui{page: $(page)} if data storage eden:waypoint_db waypoints.$(waypoint_id).gui{slot: $(slot)} unless items block ~ ~ ~ container.$(slot) player_head run function wawo:waypoint_hub/gui/create/fill_waypoints/add_waypoint with storage eden:temp waypoint_gui.entries.$(waypoint_id)

#$say $(waypoint_id)
#$tellraw NiceRon "waypoint:$(waypoint_id) page:$(page) slot:$(slot)"