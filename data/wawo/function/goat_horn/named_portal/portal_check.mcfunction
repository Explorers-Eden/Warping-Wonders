$execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}] run function wawo:goat_horn/named_portal/execute_tp with storage eden:temp goat_horn.tp
$execute at @s unless entity @e[type=minecraft:area_effect_cloud,tag=wawo.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}] run function wawo:goat_horn/named_portal/create_portal with storage eden:temp goat_horn.tp

$experience add @s -$(exp_cost) levels