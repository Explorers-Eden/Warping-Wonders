##default technical scoreboard
scoreboard objectives add wawo.technical dummy

##additional scoreboards
scoreboard objectives add wawo.waypoint_hub.menu.teleport trigger {"bold":false,"color":"dark_purple","italic":false,"text":"Waypoint Hub: Teleport"}
scoreboard objectives add wawo.waypoint_hub.id dummy
scoreboard objectives add wawo.waypoint_hub.head dummy
scoreboard objectives add wawo.waypoint_hub.player.limit dummy
scoreboard objectives add wawo.portal_horn.teleport.send trigger {"bold":false,"color":"dark_purple","italic":false,"text":"Portal Horn: Teleport Request Send"}
scoreboard objectives add wawo.portal_horn.teleport.accept trigger {"bold":false,"color":"dark_purple","italic":false,"text":"Portal Horn: Teleport Request Accepted"}
scoreboard objectives add wawo.portal_horn.player.id dummy

##scoreboard dummy entries
scoreboard players set $2 wawo.technical 2

##add initial settings
execute unless data storage eden:settings warping_wonders run function wawo:default_values

##3.01 fix
execute unless data storage eden:datapack warping_wonders{version:"3.02"} run data modify storage eden:settings warping_wonders.portal_horn merge value {command_template: "function wawo:dialog/command_template/portal_horn {active:$(active),exp_cost:$(exp_cost),breaking_chance:$(breaking_chance),mob_teleport:$(mob_teleport)}"}

##set data pack version
data modify storage eden:datapack warping_wonders.version set value "3.02"