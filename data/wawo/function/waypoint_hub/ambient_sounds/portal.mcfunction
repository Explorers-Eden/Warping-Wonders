execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~-1 ~ obsidian run playsound minecraft:block.portal.ambient block @a ~ ~ ~ .05 .2

schedule function wawo:waypoint_hub/ambient_sounds/portal 8s