$execute if data storage eden:database waypoints.hubs.$(db_id) store result storage eden:database waypoints.hubs.$(db_id).gui.slot int 1 run scoreboard players get $gui_slot eden.technical
$execute if data storage eden:database waypoints.hubs.$(db_id) store result storage eden:database waypoints.hubs.$(db_id).gui.page int 1 run scoreboard players get $gui_page eden.technical
scoreboard players operation $max_page wawo.waypoint_hub.gui.page = $gui_page eden.technical

$execute if data storage eden:database waypoints.hubs.$(db_id) run scoreboard players add $gui_slot eden.technical 1
execute if score $gui_slot eden.technical matches 18.. run scoreboard players add $gui_page eden.technical 1
execute if score $gui_slot eden.technical matches 18.. run scoreboard players set $gui_slot eden.technical 0

execute if score $db_id eden.technical <= $unique_waypoint_id wawo.waypoint_hub.id store result storage eden:temp waypoint.db_id int 1 run scoreboard players add $db_id eden.technical 1
execute if score $db_id eden.technical <= $unique_waypoint_id wawo.waypoint_hub.id run function wawo:waypoint_hub/database/index/set_gui_index with storage eden:temp waypoint