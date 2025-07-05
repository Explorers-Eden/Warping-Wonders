$execute if data storage eden:settings warping_wonders.waypoint_hub{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] in $(dimension) positioned $(x) $(y) $(z) run tp @s ~1 ~.5 ~
$execute at @s unless predicate eden:entity/is_riding in $(dimension) positioned $(x) $(y) $(z) run tp @s ~1 ~.5 ~
$execute at @s if predicate eden:entity/is_riding in $(dimension) positioned $(x) $(y) $(z) run tp @n[type=#eden:is_mount,nbt={Saddle:1b}] ~1 ~.5 ~

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

$execute in $(dimension) run forceload remove $(x) $(z)

data remove storage eden:temp waypoint_tp.teleport
tag @s remove wawo.waypoint.tp

$tellraw @s [{"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Teleported to "},{"bold":false,"color":"white","italic":false,"text":"$(name)"},{"bold":false,"color":"white","italic":false,"text":"."}]
