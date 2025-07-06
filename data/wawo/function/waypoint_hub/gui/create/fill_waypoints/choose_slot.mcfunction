
execute unless data storage eden:database waypoints.hubs.$(waypoint_id)

$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).uuid set from entity @p UUID

$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).properties set from storage eden:database waypoints.hubs.$(waypoint_id).profile.properties[0].value
$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).waypoint_id set value $(waypoint_id)
$data modify storage eden:temp waypoint_gui.entries.$(waypoint_id).slot set value $(slot)

$execute if data storage eden:database waypoints.hubs.$(waypoint_id).gui{page: $(page)} if data storage eden:database waypoints.hubs.$(waypoint_id).gui{slot: $(slot)} run data modify storage eden:database waypoints.gui.$(gui_id).slot.$(slot) set from storage eden:database waypoints.hubs.$(waypoint_id).pos
$execute if data storage eden:database waypoints.hubs.$(waypoint_id).gui{page: $(page)} if data storage eden:database waypoints.hubs.$(waypoint_id).gui{slot: $(slot)} run data modify storage eden:database waypoints.gui.$(gui_id).slot.$(slot).name set from storage eden:database waypoints.hubs.$(waypoint_id).waypoint_name
$execute if data storage eden:database waypoints.hubs.$(waypoint_id).gui{page: $(page)} if data storage eden:database waypoints.hubs.$(waypoint_id).gui{slot: $(slot)} run data modify storage eden:database waypoints.gui.$(gui_id).slot.$(slot).waypoint_id set from storage eden:database waypoints.hubs.$(waypoint_id).id

$execute if data storage eden:database waypoints.hubs.$(waypoint_id).gui{page: $(page)} if data storage eden:database waypoints.hubs.$(waypoint_id).gui{slot: $(slot)} unless items block ~ ~ ~ container.$(slot) player_head run function wawo:waypoint_hub/gui/create/fill_waypoints/add_waypoint with storage eden:temp waypoint_gui.entries.$(waypoint_id)