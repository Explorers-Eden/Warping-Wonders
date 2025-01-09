execute if block ~ ~ ~ minecraft:barrel[open=true] unless score @s wawo.waypoint_hub.gui.in_use matches 1 run function wawo:waypoint_hub/gui/create/run
execute if block ~ ~ ~ minecraft:barrel[open=false] run scoreboard players set @s wawo.waypoint_hub.gui.in_use 0
execute if block ~ ~ ~ minecraft:barrel[open=false] run scoreboard players set @s wawo.waypoint_hub.gui.entry_id 0
execute if block ~ ~ ~ minecraft:barrel[open=false] run function wawo:waypoint_hub/gui/remove/barrel_closed
