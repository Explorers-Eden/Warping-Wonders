$execute in $(dimension) run forceload add $(x) $(z)

$execute if data storage eden:settings warping_wonders.recovery_compass{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] in $(dimension) run tp @s $(x) $(y_adj) $(z)
$execute at @s unless predicate eden:entity/is_riding in $(dimension) run tp $(x) $(y_adj) $(z)
$execute at @s if predicate eden:entity/is_riding in $(dimension) run tp @n[type=#eden:is_mount,nbt={Saddle:1b}] $(x) $(y_adj) $(z)

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

$execute in $(dimension) run forceload remove $(x) $(z)
$experience add @s -$(exp_cost) levels

execute unless predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.recovery_compass.breaking_chance"}} run give @s minecraft:recovery_compass

data remove storage eden:temp recovery_compass.tp