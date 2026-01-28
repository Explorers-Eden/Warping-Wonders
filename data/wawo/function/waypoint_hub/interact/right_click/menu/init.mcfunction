data remove storage eden:temp waypoint_hub.menu
tag @s add wawo.opened_waypoint

$data modify storage eden:temp waypoint_hub.menu.home_waypoint_name set from storage eden:database waypoints.hubs.$(waypoint_id).waypoint_name
$data modify storage eden:temp waypoint_hub.menu.home_waypoint_x set from storage eden:database waypoints.hubs.$(waypoint_id).pos.x
$data modify storage eden:temp waypoint_hub.menu.home_waypoint_y set from storage eden:database waypoints.hubs.$(waypoint_id).pos.y
$data modify storage eden:temp waypoint_hub.menu.home_waypoint_z set from storage eden:database waypoints.hubs.$(waypoint_id).pos.z
$data modify storage eden:temp waypoint_hub.menu.home_dimension_name set from storage eden:database waypoints.hubs.$(waypoint_id).dimension_name
$data modify storage eden:temp waypoint_hub.menu.home_owner set from storage eden:database waypoints.hubs.$(waypoint_id).profile.name
$data modify storage eden:temp waypoint_hub.menu.home_id set value $(waypoint_id)

$execute unless data storage eden:database waypoints.hubs.$(waypoint_id).color run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#ffffff"
$data modify storage eden:temp waypoint_hub.menu.home_color set from storage eden:database waypoints.hubs.$(waypoint_id).color

execute at @s run loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp waypoint_hub.menu.playername set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8] Item.components.minecraft:profile.name
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8]

execute store result storage eden:temp waypoint_hub.menu.waypoint_id int 1 run scoreboard players set $waypoint_menu_id wawo.technical 1
execute as @n[type=marker,tag=wawo.waypoint_hub.marker,distance=..16] run function wawo:waypoint_hub/interact/right_click/menu/build/init with storage eden:temp waypoint_hub.menu