execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~-1 ~ prismarine run playsound minecraft:block.conduit.ambient block @a ~ ~ ~ .4 .2

schedule function wawo:waypoint_hub/ambient_sounds/conduit 8s