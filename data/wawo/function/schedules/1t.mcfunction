function wawo:waypoint_hub/gui/run
execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s run function wawo:waypoint_hub/radius_particles/init with storage eden:settings warping_wonders.waypoint_hub

schedule function wawo:schedules/1t 1t