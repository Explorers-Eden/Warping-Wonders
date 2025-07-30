$execute if data storage eden:database waypoints.hubs.$(id){access:"private"} unless data storage eden:database waypoints.hubs.$(id).profile{id:$(uuid)} at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2
$execute if data storage eden:database waypoints.hubs.$(id){access:"private"} unless data storage eden:database waypoints.hubs.$(id).profile{id:$(uuid)} run return run tellraw @s [{"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"You have no access to teleport there."}]

$execute if data storage eden:database waypoints.hubs.$(id){announcement:"enabled"} in $(dimension) positioned $(x) $(y) $(z) run playsound minecraft:entity.chicken.egg neutral @a[distance=..$(msg_range)] ~ ~ ~ .5 2
$execute if data storage eden:database waypoints.hubs.$(id){announcement:"enabled"} in $(dimension) positioned $(x) $(y) $(z) run tellraw @a[distance=..$(msg_range)] [{"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"A Visitor teleported to $(name)."}]

$execute if data storage eden:settings warping_wonders.waypoint_hub{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] in $(dimension) positioned $(x) $(y) $(z) run tp @s ~1 ~.5 ~-1
$execute at @s unless predicate eden:entity/is_riding in $(dimension) positioned $(x) $(y) $(z) run tp @s ~1 ~.5 ~-1
$execute at @s if predicate eden:entity/is_riding in $(dimension) positioned $(x) $(y) $(z) run tp @n[type=#eden:is_mount,nbt={Saddle:1b}] ~1 ~.5 ~-1

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

$execute in $(dimension) run forceload remove $(x) $(z)

data remove storage eden:temp waypoint_tp.teleport
tag @s remove wawo.waypoint.tp

$experience add @s -$(exp_cost) levels

$tellraw @s [{"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Teleported to "},{"bold":false,"color":"white","italic":false,"text":"$(name)"},{"bold":false,"color":"white","italic":false,"text":"."}]
