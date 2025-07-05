##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add wawo.inv_slot dummy
scoreboard objectives add wawo.exp_lvl dummy
scoreboard objectives add wawo.goat_horn.toggle dummy
scoreboard objectives add wawo.goat_horn.timer dummy
scoreboard objectives add wawo.waypoint_hub.id dummy
scoreboard objectives add wawo.waypoint_hub.player.limit dummy
scoreboard objectives add wawo.waypoint_hub.gui.page dummy
scoreboard objectives add wawo.waypoint_hub.gui.slot dummy
scoreboard objectives add wawo.waypoint_hub.gui.in_use dummy
scoreboard objectives add wawo.waypoint_hub.gui.entry_id dummy
scoreboard objectives add wawo.waypoint_hub.gui.head dummy

##scoreboard dummy entries
scoreboard players set $2 eden.technical 2

##wipe data on load
data remove storage eden:database waypoints.gui
data remove storage eden:temp waypoint_tp.teleport
data remove storage eden:temp waypoint_gui
data remove storage eden:temp waypoint
data remove storage eden:temp clock
data remove storage eden:temp compass
data remove storage eden:temp goat_horn
data remove storage eden:temp recovery_compass

##init schedules
schedule function wawo:schedules/1s 1s
schedule function wawo:schedules/5t 5t
schedule function wawo:schedules/1t 1t

## ambient sound schedules
schedule function wawo:waypoint_hub/ambient_sounds/portal 10s
schedule function wawo:waypoint_hub/ambient_sounds/beacon 2s
schedule function wawo:waypoint_hub/ambient_sounds/conduit 9s

##create waypoint_icons db
function wawo:waypoint_hub/database/waypoint_icons/create

##add initial settings
execute unless data storage eden:settings warping_wonders run function wawo:default_values

##transfer old waypoints to new storage
data modify storage eden:database waypoints.hubs set from storage eden:database waypoints.hubs
data modify storage eden:database waypoints.hubs set from storage eden:database waypoints.gui

