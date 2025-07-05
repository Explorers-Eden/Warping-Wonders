$execute if data storage eden:settings warping_wonders.portal_horn{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] run tp @s @n[type=minecraft:area_effect_cloud,tag=eden.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}]
$execute at @s unless predicate eden:entity/is_riding run tp @s @n[type=minecraft:area_effect_cloud,tag=eden.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}]
$execute at @s if predicate eden:entity/is_riding run tp @n[type=#eden:is_mount,nbt={Saddle:1b}] @n[type=minecraft:area_effect_cloud,tag=eden.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}]

particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

data remove storage eden:temp goat_horn.tp