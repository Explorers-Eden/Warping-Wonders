
data remove storage eden:temp waypoint_tp.teleport
tag @s add wawo.waypoint.tp

execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s run function wawo:waypoint_hub/gui/teleport/item_check
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s run function wawo:waypoint_hub/gui/teleport/replace_barrel