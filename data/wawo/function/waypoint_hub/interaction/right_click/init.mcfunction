advancement revoke @s only wawo:waypoint_icon/right_click

data modify storage eden:temp waypoint.head.player_uuid set from entity @s UUID
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] store result storage eden:temp waypoint.head.waypoint_id int 1 run scoreboard players get @s wawo.waypoint_hub.id

function wawo:waypoint_hub/interaction/right_click/check_uuid with storage eden:temp waypoint.head


execute as @e[type=minecraft:interaction,tag=wawo.waypoint.hub.interaction,distance=..16] if data entity @s interaction run data remove entity @s interaction