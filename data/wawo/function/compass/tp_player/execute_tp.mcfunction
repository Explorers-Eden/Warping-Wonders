$execute in $(dimension) run forceload add $(x) $(z)

$execute if data storage eden:settings warping_wonders.compass{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] in $(dimension) run tp @s $(x) $(y_adj) $(z)
$execute at @s unless predicate eden:entity/is_riding in $(dimension) run tp $(x) $(y_adj) $(z)
$execute at @s if predicate eden:entity/is_riding in $(dimension) run tp @n[type=#eden:is_mount,nbt={Saddle:1b}] $(x) $(y_adj) $(z)

particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

$execute in $(dimension) run forceload remove $(x) $(z)
$experience add @s -$(exp_cost) levels

data remove storage eden:temp compass.tp