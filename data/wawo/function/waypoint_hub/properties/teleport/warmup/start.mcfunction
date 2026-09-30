execute if entity @s[tag=wawo.waypoint_hub.warmup.active] run return fail

execute store result storage eden:temp waypoint.warmup.exp_level int 1 run experience query @s levels
execute unless predicate {"type":"minecraft:int_value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"waypoint.warmup.exp_level"},"test":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.waypoint_hub.exp_cost"}}} run return run title @s actionbar {"bold":false,"color":"red","fallback":"Insufficient EXP Level","italic":false,"translate":"message.warping_wonders.general.insufficient_exp"}
data remove storage eden:temp waypoint.warmup

scoreboard players operation @s wawo.waypoint_hub.warmup.id = @s wawo.waypoint_hub.menu.teleport
tag @s add wawo.waypoint_hub.warmup.active
execute store result score @s wawo.waypoint_hub.warmup.ticks run data get storage eden:settings warping_wonders.waypoint_hub.warmup 20
execute store result score @s wawo.waypoint_hub.warmup.x run data get entity @s Pos[0] 10
execute store result score @s wawo.waypoint_hub.warmup.y run data get entity @s Pos[1] 10
execute store result score @s wawo.waypoint_hub.warmup.z run data get entity @s Pos[2] 10
scoreboard players set @s wawo.waypoint_hub.warmup.damage 0
scoreboard players reset @s wawo.waypoint_hub.warmup.left

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2
schedule function wawo:waypoint_hub/properties/teleport/warmup/tick 1t
