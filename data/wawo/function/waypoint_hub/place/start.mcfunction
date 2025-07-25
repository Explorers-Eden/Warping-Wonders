$execute if entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..$(min_distance)] run return run function wawo:waypoint_hub/place/invalid_position
execute unless data storage eden:settings warping_wonders.waypoint_hub{active:"enabled"} run return run function wawo:waypoint_hub/place/feature_disabled

execute if score @s wawo.waypoint_hub.player.limit >= $max_limit wawo.waypoint_hub.player.limit run return run function wawo:waypoint_hub/place/limit_exceeded
scoreboard players add @s wawo.waypoint_hub.player.limit 1

execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.deepslate] at @s run return run function wawo:waypoint_hub/place/deepslate/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.andesite] at @s run return run function wawo:waypoint_hub/place/andesite/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.basalt] at @s run return run function wawo:waypoint_hub/place/basalt/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.blackstone] at @s run return run function wawo:waypoint_hub/place/blackstone/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.diorite] at @s run return run function wawo:waypoint_hub/place/diorite/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.granite] at @s run return run function wawo:waypoint_hub/place/granite/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.tuff] at @s run return run function wawo:waypoint_hub/place/tuff/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.sculk] at @s run return run function wawo:waypoint_hub/place/sculk/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.sandstone] at @s run return run function wawo:waypoint_hub/place/sandstone/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.red_sandstone] at @s run return run function wawo:waypoint_hub/place/red_sandstone/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.copper] at @s run return run function wawo:waypoint_hub/place/copper/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.exposed_copper] at @s run return run function wawo:waypoint_hub/place/exposed_copper/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.weathered_copper] at @s run return run function wawo:waypoint_hub/place/weathered_copper/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.oxidized_copper] at @s run return run function wawo:waypoint_hub/place/oxidized_copper/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.prismarine] at @s run return run function wawo:waypoint_hub/place/prismarine/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.dark_prismarine] at @s run return run function wawo:waypoint_hub/place/dark_prismarine/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.acacia] at @s run return run function wawo:waypoint_hub/place/acacia/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.bamboo] at @s run return run function wawo:waypoint_hub/place/bamboo/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.birch] at @s run return run function wawo:waypoint_hub/place/birch/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.cherry] at @s run return run function wawo:waypoint_hub/place/cherry/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.crimson] at @s run return run function wawo:waypoint_hub/place/crimson/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.dark_oak] at @s run return run function wawo:waypoint_hub/place/dark_oak/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.end_stone] at @s run return run function wawo:waypoint_hub/place/end_stone/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.hay] at @s run return run function wawo:waypoint_hub/place/hay/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.jungle] at @s run return run function wawo:waypoint_hub/place/jungle/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.mangrove] at @s run return run function wawo:waypoint_hub/place/mangrove/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.melon] at @s run return run function wawo:waypoint_hub/place/melon/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.oak] at @s run return run function wawo:waypoint_hub/place/oak/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.obsidian] at @s run return run function wawo:waypoint_hub/place/obsidian/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.packed_mud] at @s run return run function wawo:waypoint_hub/place/packed_mud/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.pale_oak] at @s run return run function wawo:waypoint_hub/place/pale_oak/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.pumpkin] at @s run return run function wawo:waypoint_hub/place/pumpkin/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.purpur] at @s run return run function wawo:waypoint_hub/place/purpur/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.quartz] at @s run return run function wawo:waypoint_hub/place/quartz/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.spruce] at @s run return run function wawo:waypoint_hub/place/spruce/init
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.warped] at @s run return run function wawo:waypoint_hub/place/warped/init