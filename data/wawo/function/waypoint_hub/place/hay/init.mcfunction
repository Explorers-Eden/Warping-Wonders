execute if data entity @s CustomName unless entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..24] align xyz positioned ~ ~ ~ run function wawo:waypoint_hub/place/hay/named/load
execute unless data entity @s CustomName unless entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..24] align xyz positioned ~ ~ ~ run function wawo:waypoint_hub/place/hay/unnamed/load

kill @s