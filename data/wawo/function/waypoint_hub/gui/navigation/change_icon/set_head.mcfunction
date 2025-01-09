$data modify storage eden:waypoint_db waypoints.$(waypoint_id).profile.properties[0].value set from storage eden:temp waypoint.head.properties

$execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s run item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:set_components","components":{"minecraft:profile":{"id":[1731215105,-1235661595,-2029603293,-1586750030],"properties":[{"name":"textures","value":"$(properties)"}]}}}
$execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s run item modify block ~ ~ ~ container.22 {"function":"minecraft:set_components","components":{"minecraft:profile":{"id":[1731215105,-1235661595,-2029603293,-1586750030],"properties":[{"name":"textures","value":"$(properties)"}]}}}

data remove storage eden:temp waypoint.head
