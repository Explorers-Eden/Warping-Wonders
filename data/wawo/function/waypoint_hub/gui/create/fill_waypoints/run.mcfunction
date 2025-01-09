$execute if score @s wawo.waypoint_hub.gui.entry_id matches 0 run data remove storage eden:waypoint_tp waypoints.$(temp_id)

$execute store result storage eden:temp waypoint_gui.entries.$(temp_id).page int 1 run scoreboard players get @s wawo.waypoint_hub.gui.page
$execute store result storage eden:temp waypoint_gui.entries.$(temp_id).slot int 1 run scoreboard players get @s wawo.waypoint_hub.gui.slot
$data modify storage eden:temp waypoint_gui.entries.$(temp_id).gui_id set from storage eden:temp waypoint_gui.entries.temp_id
$execute if score @s wawo.waypoint_hub.gui.entry_id <= $unique_waypoint_id wawo.waypoint_hub.id store result storage eden:temp waypoint_gui.entries.$(temp_id).waypoint_id int 1 run scoreboard players add @s wawo.waypoint_hub.gui.entry_id 1

$function wawo:waypoint_hub/gui/create/fill_waypoints/choose_slot with storage eden:temp waypoint_gui.entries.$(temp_id)

execute if score @s wawo.waypoint_hub.gui.entry_id <= $unique_waypoint_id wawo.waypoint_hub.id run function wawo:waypoint_hub/gui/create/fill_waypoints/run with storage eden:temp waypoint_gui.entries
execute if score @s wawo.waypoint_hub.gui.entry_id > $unique_waypoint_id wawo.waypoint_hub.id run function wawo:waypoint_hub/gui/create/menu_items
execute if score @s wawo.waypoint_hub.gui.entry_id > $unique_waypoint_id wawo.waypoint_hub.id run data remove storage eden:temp waypoint_gui