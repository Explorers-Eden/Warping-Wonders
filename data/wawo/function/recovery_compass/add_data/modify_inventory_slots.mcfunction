$execute if items entity @s container.$(inv_slot) recovery_compass if data entity @s LastDeathLocation.pos[0] run data modify storage eden:temp recovery_compass.data.x set from entity @s LastDeathLocation.pos[0]
$execute if items entity @s container.$(inv_slot) recovery_compass if data entity @s LastDeathLocation.pos[1] run data modify storage eden:temp recovery_compass.data.y set from entity @s LastDeathLocation.pos[1]
$execute if items entity @s container.$(inv_slot) recovery_compass if data entity @s LastDeathLocation.pos[2] run data modify storage eden:temp recovery_compass.data.z set from entity @s LastDeathLocation.pos[2]
$execute if items entity @s container.$(inv_slot) recovery_compass if data entity @s LastDeathLocation.dimension run data modify storage eden:temp recovery_compass.data.dimension set from entity @s LastDeathLocation.dimension
execute if data storage eden:temp recovery_compass.data{dimension: "minecraft:overworld"} run data modify storage eden:temp recovery_compass.data.dimension set value "Overworld"
execute if data storage eden:temp recovery_compass.data{dimension: "minecraft:the_end"} run data modify storage eden:temp recovery_compass.data.dimension set value "The End"
execute if data storage eden:temp recovery_compass.data{dimension: "minecraft:the_nether"} run data modify storage eden:temp recovery_compass.data.dimension set value "The Nether"
execute if data storage eden:temp recovery_compass.data{dimension: "wawo:astral_plane"} run data modify storage eden:temp recovery_compass.data.dimension set value "Astral Plane"
execute if data storage eden:temp recovery_compass.data{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp recovery_compass.data.dimension set value "Deep Blue"
$execute if items entity @s container.$(inv_slot) recovery_compass if data entity @s LastDeathLocation.dimension run item modify entity @s container.$(inv_slot) wawo:wawo/recovery_compass/set_lore

execute store result storage eden:temp recovery_compass.data.inv_slot int 1 run scoreboard players add @s wawo.inv_slot 1
execute unless score @s wawo.inv_slot matches 36.. run return run function wawo:recovery_compass/add_data/modify_inventory_slots with storage eden:temp recovery_compass.data