$execute if items entity @s container.$(inv_slot) clock if data entity @s respawn run data modify storage eden:temp clock.data.x set from entity @s respawn.pos[0]
$execute if items entity @s container.$(inv_slot) clock if data entity @s respawn run data modify storage eden:temp clock.data.y set from entity @s respawn.pos[1]
$execute if items entity @s container.$(inv_slot) clock if data entity @s respawn run data modify storage eden:temp clock.data.z set from entity @s respawn.pos[2]
$execute if items entity @s container.$(inv_slot) clock if data entity @s respawn if data entity @s respawn.dimension run data modify storage eden:temp clock.data.dimension set from entity @s respawn.dimension
$execute if items entity @s container.$(inv_slot) clock if data entity @s respawn unless data entity @s respawn.dimension run data modify storage eden:temp clock.data.dimension set value "minecraft:overworld"
execute if data storage eden:temp clock.data{dimension: "minecraft:overworld"} run data modify storage eden:temp clock.data.dimension set value "Overworld"
execute if data storage eden:temp clock.data{dimension: "minecraft:the_end"} run data modify storage eden:temp clock.data.dimension set value "The End"
execute if data storage eden:temp clock.data{dimension: "minecraft:the_nether"} run data modify storage eden:temp clock.data.dimension set value "The Nether"
execute if data storage eden:temp clock.data{dimension: "wawo:astral_plane"} run data modify storage eden:temp clock.data.dimension set value "Astral Plane"
execute if data storage eden:temp clock.data{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp clock.data.dimension set value "Deep Blue"
$execute if items entity @s container.$(inv_slot) clock if data entity @s respawn run item modify entity @s container.$(inv_slot) wawo:wawo/clock/set_lore

execute store result storage eden:temp clock.data.inv_slot int 1 run scoreboard players add @s wawo.inv_slot 1
execute unless score @s wawo.inv_slot matches 36.. run return run function wawo:clock/add_data/modify_inventory_slots with storage eden:temp clock.data