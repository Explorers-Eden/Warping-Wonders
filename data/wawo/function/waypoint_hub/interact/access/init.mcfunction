execute unless items entity @s weapon.mainhand minecraft:paper[minecraft:custom_name] run return fail

##trust player
data modify storage eden:temp waypoint.head.check_trust_string set string entity @s SelectedItem.components.minecraft:custom_name 0 5
data modify storage eden:temp waypoint.head.playername set string entity @s SelectedItem.components.minecraft:custom_name 6

execute if data storage eden:temp waypoint.head{check_trust_string:"trust"} run return run function wawo:waypoint_hub/interact/access/trust with storage eden:temp waypoint.head
execute if data storage eden:temp waypoint.head{check_trust_string:"Trust"} run return run function wawo:waypoint_hub/interact/access/trust with storage eden:temp waypoint.head

##untrust player
data modify storage eden:temp waypoint.head.check_trust_string set string entity @s SelectedItem.components.minecraft:custom_name 0 7
data modify storage eden:temp waypoint.head.playername set string entity @s SelectedItem.components.minecraft:custom_name 8
$data modify storage eden:temp waypoint.head.trust_list set from storage eden:database waypoints.hubs.$(waypoint_id).trust

execute if data storage eden:temp waypoint.head{check_trust_string:"untrust"} run return run function wawo:waypoint_hub/interact/access/untrust with storage eden:temp waypoint.head
execute if data storage eden:temp waypoint.head{check_trust_string:"Untrust"} run return run function wawo:waypoint_hub/interact/access/untrust with storage eden:temp waypoint.head