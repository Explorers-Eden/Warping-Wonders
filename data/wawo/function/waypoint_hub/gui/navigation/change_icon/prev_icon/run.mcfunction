data modify storage eden:temp waypoint.head.player_uuid set from entity @s UUID
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] store result storage eden:temp waypoint.head.waypoint_id int 1 run scoreboard players get @s wawo.waypoint_hub.id

function wawo:waypoint_hub/gui/navigation/change_icon/prev_icon/check_uuid with storage eden:temp waypoint.head
