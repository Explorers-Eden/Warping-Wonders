function wawo:goat_horn/timer
function wawo:goat_horn/particles
function wawo:goat_horn/unload_chunks
function wawo:waypoint_hub/ambient_particles

execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s if items entity @e[type=minecraft:player,distance=..32] weapon.mainhand minecraft:armor_stand[minecraft:custom_data={items: "waypoint_hub"}] positioned ~ ~1 ~ run function wawo:waypoint_hub/radius_particles
execute as @e[type=marker,tag=wawo.waypoint_hub.marker] at @s if items entity @e[type=minecraft:player,distance=..32] weapon.mainhand minecraft:armor_stand[minecraft:custom_data={items: "waypoint_hub"}] run rotate @s ~1 ~
execute as @e[type=minecraft:item_display,tag=wawo.waypoint_hub.icon] at @s run rotate @s ~22 ~

schedule function wawo:schedules/1s 1s