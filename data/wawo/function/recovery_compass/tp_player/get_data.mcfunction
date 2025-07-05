advancement revoke @s only wawo:consumed_recovery_compass

execute unless data storage eden:settings warping_wonders.recovery_compass{active:"enabled"} run return fail
execute store result storage eden:temp recovery_compass.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"recovery_compass.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.recovery_compass.exp_cost"}}} run return run give @s minecraft:recovery_compass

data modify storage eden:temp recovery_compass.tp.dimension set from entity @s Dimension
data modify storage eden:temp recovery_compass.tp.x set from entity @s Pos[0]
data modify storage eden:temp recovery_compass.tp.y set from entity @s Pos[1]
data modify storage eden:temp recovery_compass.tp.z set from entity @s Pos[2]

execute if items entity @s weapon.offhand recovery_compass run data modify storage eden:temp recovery_compass.tp.dimension set from entity @s LastDeathLocation.dimension
execute if items entity @s weapon.offhand recovery_compass run data modify storage eden:temp recovery_compass.tp.x set from entity @s LastDeathLocation.pos[0]
execute if items entity @s weapon.offhand recovery_compass run data modify storage eden:temp recovery_compass.tp.y set from entity @s LastDeathLocation.pos[1]
execute if items entity @s weapon.offhand recovery_compass run data modify storage eden:temp recovery_compass.tp.z set from entity @s LastDeathLocation.pos[2]

execute if items entity @s weapon.mainhand recovery_compass run data modify storage eden:temp recovery_compass.tp.dimension set from entity @s LastDeathLocation.dimension
execute if items entity @s weapon.mainhand recovery_compass run data modify storage eden:temp recovery_compass.tp.x set from entity @s LastDeathLocation.pos[0]
execute if items entity @s weapon.mainhand recovery_compass run data modify storage eden:temp recovery_compass.tp.y set from entity @s LastDeathLocation.pos[1]
execute if items entity @s weapon.mainhand recovery_compass run data modify storage eden:temp recovery_compass.tp.z set from entity @s LastDeathLocation.pos[2]

data modify storage eden:temp recovery_compass.tp.uuid set from entity @s UUID
data modify storage eden:temp recovery_compass.tp.exp_cost set from storage eden:settings warping_wonders.recovery_compass.exp_cost

function wawo:recovery_compass/tp_player/adjust_height