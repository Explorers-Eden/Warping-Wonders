$execute if data storage eden:settings warping_wonders.portal_horn{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] run tp @s @n[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.unnamed]
execute at @s unless predicate wawo:entity/is_riding run tp @s @n[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.unnamed]
execute at @s if predicate wawo:entity/is_riding run tp @n[type=#wawo:is_mount] @n[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.unnamed]

particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

data remove storage eden:temp goat_horn.tp