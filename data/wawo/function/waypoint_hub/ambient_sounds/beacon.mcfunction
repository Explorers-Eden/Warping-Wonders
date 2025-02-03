execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~-1 ~ glass run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ .15 .2

schedule function wawo:waypoint_hub/ambient_sounds/beacon 2s