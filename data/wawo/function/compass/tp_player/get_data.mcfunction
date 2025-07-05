advancement revoke @s only wawo:consumed_compass

execute unless data storage eden:settings warping_wonders.compass{active:"enabled"} run return fail
execute store result storage eden:temp compass.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"compass.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.compass.exp_cost"}}} run return fail

data modify storage eden:temp compass.tp.dimension set from entity @s Dimension
data modify storage eden:temp compass.tp.x set from entity @s Pos[0]
data modify storage eden:temp compass.tp.y set from entity @s Pos[1]
data modify storage eden:temp compass.tp.z set from entity @s Pos[2]

execute if items entity @s weapon.offhand compass run data modify storage eden:temp compass.tp.dimension set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.dimension
execute if items entity @s weapon.offhand compass run data modify storage eden:temp compass.tp.x set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.pos[0]
execute if items entity @s weapon.offhand compass run data modify storage eden:temp compass.tp.y set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.pos[1]
execute if items entity @s weapon.offhand compass run data modify storage eden:temp compass.tp.z set from entity @s Inventory[{Slot:-106b}].components.minecraft:lodestone_tracker.target.pos[2]

execute if items entity @s weapon.mainhand compass run data modify storage eden:temp compass.tp.dimension set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension
execute if items entity @s weapon.mainhand compass run data modify storage eden:temp compass.tp.x set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[0]
execute if items entity @s weapon.mainhand compass run data modify storage eden:temp compass.tp.y set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[1]
execute if items entity @s weapon.mainhand compass run data modify storage eden:temp compass.tp.z set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[2]

data modify storage eden:temp compass.tp.uuid set from entity @s UUID
data modify storage eden:temp compass.tp.exp_cost set from storage eden:settings warping_wonders.compass.exp_cost

function wawo:compass/tp_player/adjust_height