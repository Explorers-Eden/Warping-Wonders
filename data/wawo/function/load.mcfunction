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
scoreboard objectives add wawo.totem_of_homecoming.id dummy
scoreboard objectives add wawo.waypoint_hub.warmup.id dummy
scoreboard objectives add wawo.waypoint_hub.warmup.ticks dummy
scoreboard objectives add wawo.waypoint_hub.warmup.x dummy
scoreboard objectives add wawo.waypoint_hub.warmup.y dummy
scoreboard objectives add wawo.waypoint_hub.warmup.z dummy
scoreboard objectives add wawo.waypoint_hub.warmup.damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add wawo.waypoint_hub.warmup.left minecraft.custom:minecraft.leave_game

##scoreboard dummy entries
scoreboard players set $2 wawo.technical 2
scoreboard players set $20 wawo.technical 20

##add initial settings
execute unless data storage eden:settings warping_wonders run function wawo:default_values
execute unless data storage eden:settings warping_wonders.waypoint_hub.warmup run data modify storage eden:settings warping_wonders.waypoint_hub merge value {warmup:3,command_template:"function wawo:dialog/command_template/waypoint_hub {active:$(active),exp_cost:$(exp_cost),min_distance:$(min_distance),player_limit:$(player_limit),mob_teleport:$(mob_teleport),warmup:$(warmup)}"}

##cancel teleport warm-ups interrupted by a reload
execute as @a[tag=wawo.waypoint_hub.warmup.active] run function wawo:waypoint_hub/properties/teleport/warmup/clear

##start repeating loops
function wawo:start

##set data pack version
data modify storage eden:datapack warping_wonders.version set value "4.1"