execute if score @s wawo.waypoint_hub.gui.in_use matches 0 run scoreboard players set @s wawo.waypoint_hub.gui.page 1
scoreboard players set @s wawo.waypoint_hub.gui.slot 0

execute store result storage eden:temp waypoint_gui.entries.temp_id int 1 run scoreboard players get @s wawo.waypoint_hub.id
function wawo:waypoint_hub/gui/create/fill_waypoints/run with storage eden:temp waypoint_gui.entries

scoreboard players set @s wawo.waypoint_hub.gui.in_use 1