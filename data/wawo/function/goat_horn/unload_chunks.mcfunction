execute as @e[type=marker,tag=wawo.goat_horn_portal.unnamed.chunk_check] at @s unless entity @e[type=area_effect_cloud,tag=wawo.goat_horn_portal.unnamed,distance=..1] run forceload remove ~ ~
execute as @e[type=marker,tag=wawo.goat_horn_portal.unnamed.chunk_check] at @s unless entity @e[type=area_effect_cloud,tag=wawo.goat_horn_portal.unnamed,distance=..1] run kill @s

execute as @e[type=marker,tag=wawo.goat_horn_portal.named.chunk_check] at @s unless entity @e[type=area_effect_cloud,tag=wawo.goat_horn_portal.named,distance=..1] run forceload remove ~ ~
execute as @e[type=marker,tag=wawo.goat_horn_portal.named.chunk_check] at @s unless entity @e[type=area_effect_cloud,tag=wawo.goat_horn_portal.named,distance=..1] run kill @s
