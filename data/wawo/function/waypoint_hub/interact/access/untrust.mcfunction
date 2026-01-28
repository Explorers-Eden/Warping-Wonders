$execute unless data storage eden:database waypoints.hubs.$(waypoint_id){trust:[$(playername)]} run return fail
data modify storage eden:temp waypoint.head.trust_selection set from storage eden:temp waypoint.head.trust_list[0]

$execute if data storage eden:temp waypoint.head.new_trust_list[0] \
    unless data storage eden:temp waypoint.head{trust_selection:$(playername)} \
        run execute unless data storage eden:temp waypoint.head{trust_selection:", "} \
            run data modify storage eden:temp waypoint.head.new_trust_list append value ", "

$execute unless data storage eden:temp waypoint.head{trust_selection:$(playername)} \
    run execute unless data storage eden:temp waypoint.head{trust_selection:", "} \
        run data modify storage eden:temp waypoint.head.new_trust_list append from storage eden:temp waypoint.head.trust_list[0]

data remove storage eden:temp waypoint.head.trust_list[0]
execute if data storage eden:temp waypoint.head.trust_list[0] run return run function wawo:waypoint_hub/interact/access/untrust with storage eden:temp waypoint.head

$data modify storage eden:database waypoints.hubs.$(waypoint_id).trust set from storage eden:temp waypoint.head.new_trust_list
$execute unless data storage eden:temp waypoint.head.new_trust_list run data remove storage eden:database waypoints.hubs.$(waypoint_id).trust

item modify entity @s[gamemode=!creative] weapon.mainhand [{"function": "minecraft:set_count","count": -1,"add": true}]
data remove storage eden:temp waypoint.head