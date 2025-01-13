execute if entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..24] run function wawo:waypoint_hub/place/invalid_position

execute if data entity @s CustomName unless entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..24] align xyz positioned ~ ~ ~ run function wawo:waypoint_hub/place/named/load
execute unless data entity @s CustomName unless entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..24] align xyz positioned ~ ~ ~ run function wawo:waypoint_hub/place/unnamed/load

kill @s