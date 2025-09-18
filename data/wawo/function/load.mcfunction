##default technical scoreboard
scoreboard objectives add wawo.technical dummy

##additional scoreboards
scoreboard objectives add wawo.waypoint_hub.menu.teleport trigger {"bold":false,"color":"dark_purple","italic":false,"text":"Waypoint Hub: Teleport"}
scoreboard objectives add wawo.waypoint_hub.id dummy
scoreboard objectives add wawo.waypoint_hub.head dummy
scoreboard objectives add wawo.waypoint_hub.player.limit dummy

##add initial settings
execute unless data storage eden:settings warping_wonders run function wawo:default_values

##set data pack version
data modify storage eden:datapack warping_wonders.version set value "3.0"