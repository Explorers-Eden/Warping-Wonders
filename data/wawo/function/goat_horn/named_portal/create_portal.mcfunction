
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"reverse_portal"},Radius:1f,Duration:1800,Tags:["wawo.goat_horn_portal.named",$(portal_name)]}
$summon marker ~ ~ ~ {Tags:["wawo.goat_horn_portal.named.chunk_check",$(portal_name)]}
$execute at @e[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}] run forceload add ~ ~

data remove storage eden:temp goat_horn.tp