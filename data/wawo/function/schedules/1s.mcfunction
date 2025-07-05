function wawo:goat_horn/timer
function wawo:goat_horn/particles
function wawo:goat_horn/unload_chunks
function wawo:waypoint_hub/ambient_particles

execute as @e[type=minecraft:item_display,tag=wawo.waypoint_hub.icon] at @s run rotate @s ~22 ~

schedule function wawo:schedules/1s 1s