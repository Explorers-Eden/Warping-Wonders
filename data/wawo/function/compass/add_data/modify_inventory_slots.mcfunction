$execute if data entity @s Inventory[{Slot:$(inv_slot)b}].components.minecraft:lodestone_tracker.target run data modify storage eden:temp compass.data.x set from entity @s Inventory[{Slot:$(inv_slot)b}].components."minecraft:lodestone_tracker".target.pos[0]
$execute if data entity @s Inventory[{Slot:$(inv_slot)b}].components.minecraft:lodestone_tracker.target run data modify storage eden:temp compass.data.y set from entity @s Inventory[{Slot:$(inv_slot)b}].components."minecraft:lodestone_tracker".target.pos[1]
$execute if data entity @s Inventory[{Slot:$(inv_slot)b}].components.minecraft:lodestone_tracker.target run data modify storage eden:temp compass.data.z set from entity @s Inventory[{Slot:$(inv_slot)b}].components."minecraft:lodestone_tracker".target.pos[2]
$execute if data entity @s Inventory[{Slot:$(inv_slot)b}].components.minecraft:lodestone_tracker.target run data modify storage eden:temp compass.data.dimension set from entity @s Inventory[{Slot:$(inv_slot)b}].components."minecraft:lodestone_tracker".target.dimension
execute if data storage eden:temp compass.data{dimension: "minecraft:overworld"} run data modify storage eden:temp compass.data.dimension set value "Overworld"
execute if data storage eden:temp compass.data{dimension: "minecraft:the_end"} run data modify storage eden:temp compass.data.dimension set value "The End"
execute if data storage eden:temp compass.data{dimension: "minecraft:the_nether"} run data modify storage eden:temp compass.data.dimension set value "The Nether"
execute if data storage eden:temp compass.data{dimension: "wawo:astral_plane"} run data modify storage eden:temp compass.data.dimension set value "Astral Plane"
execute if data storage eden:temp compass.data{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp compass.data.dimension set value "Deep Blue"
$execute if data entity @s Inventory[{Slot:$(inv_slot)b}].components.minecraft:lodestone_tracker.target run item modify entity @s container.$(inv_slot) wawo:wawo/compass/set_lore

execute store result storage eden:temp compass.data.inv_slot int 1 run scoreboard players add @s wawo.inv_slot 1
execute unless score @s wawo.inv_slot matches 36.. run return run function wawo:compass/add_data/modify_inventory_slots with storage eden:temp compass.data