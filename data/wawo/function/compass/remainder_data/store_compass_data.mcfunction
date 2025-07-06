advancement revoke @s only wawo:used_compass
execute store result storage eden:temp compass.exp_level int 1 run experience query @s levels

execute if items entity @s weapon.offhand compass unless data entity @s SelectedItem.components.minecraft:lodestone_tracker.target run data modify storage eden:temp compass.remainder set from entity @s Inventory[{Slot:-106b}].components
execute if items entity @s weapon.mainhand compass run data modify storage eden:temp compass.remainder set from entity @s SelectedItem.components

tag @s add remainder_compass

execute unless data storage eden:settings warping_wonders.compass{active:"enabled"} run return run schedule function wawo:compass/remainder_data/schedule 1t
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"compass.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.compass.exp_cost"}}} run return run function wawo:compass/remainder_data/insufficient_exp
execute unless predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.compass.breaking_chance"}} run return run schedule function wawo:compass/remainder_data/schedule 1t
