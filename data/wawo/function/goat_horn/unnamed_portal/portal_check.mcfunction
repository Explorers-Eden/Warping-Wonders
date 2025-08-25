data modify storage eden:temp goat_horn.tp.uuid set from entity @s UUID

execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.unnamed] run function wawo:goat_horn/unnamed_portal/execute_tp with storage eden:temp goat_horn.tp
execute at @s unless entity @e[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.unnamed] run function wawo:goat_horn/unnamed_portal/create_portal

$experience add @s -$(exp_cost) levels