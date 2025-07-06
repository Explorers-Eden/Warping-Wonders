$execute unless data storage eden:database waypoints.hubs.$(waypoint_id).profile{id:$(player_uuid)} run return fail

execute unless items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run return run function wawo:waypoint_hub/interaction/left_click/decrease_count with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run return run function wawo:waypoint_hub/interaction/change_name with storage eden:temp waypoint.head