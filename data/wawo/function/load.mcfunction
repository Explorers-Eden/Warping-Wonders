##default technical scoreboard
scoreboard objectives add wawo.technical dummy

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
scoreboard players set $2 wawo.technical 2

##wipe data on load
data remove storage eden:database waypoints.gui
data remove storage eden:temp waypoint_tp.teleport
data remove storage eden:temp waypoint_gui
data remove storage eden:temp waypoint
data remove storage eden:temp clock
data remove storage eden:temp compass
data remove storage eden:temp goat_horn
data remove storage eden:temp recovery_compass

##add initial settings
execute unless data storage eden:settings warping_wonders run function wawo:default_values

##set data pack version
data modify storage eden:datapack warping_wonders.version set value "2.8"