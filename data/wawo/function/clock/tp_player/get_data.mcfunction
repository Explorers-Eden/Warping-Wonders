advancement revoke @s only wawo:consumed_clock

data modify storage eden:temp clock.tp.dimension set from entity @s Dimension
data modify storage eden:temp clock.tp.x set from entity @s Pos[0]
data modify storage eden:temp clock.tp.y set from entity @s Pos[1]
data modify storage eden:temp clock.tp.z set from entity @s Pos[2]

execute if items entity @s weapon.offhand clock if data entity @s respawn.dimension run data modify storage eden:temp clock.tp.dimension set from entity @s respawn.dimension
execute if items entity @s weapon.offhand clock unless data entity @s respawn.dimension run data modify storage eden:temp clock.tp.dimension set value "minecraft:overworld"
execute if items entity @s weapon.offhand clock run data modify storage eden:temp clock.tp.x set from entity @s respawn.pos[0]
execute if items entity @s weapon.offhand clock run data modify storage eden:temp clock.tp.y set from entity @s respawn.pos[1]
execute if items entity @s weapon.offhand clock run data modify storage eden:temp clock.tp.z set from entity @s respawn.pos[2]

execute if items entity @s weapon.mainhand clock if data entity @s respawn.dimension run data modify storage eden:temp clock.tp.dimension set from entity @s respawn.dimension
execute if items entity @s weapon.mainhand clock unless data entity @s respawn.dimension run data modify storage eden:temp clock.tp.dimension set value "minecraft:overworld"
execute if items entity @s weapon.mainhand clock run data modify storage eden:temp clock.tp.x set from entity @s respawn.pos[0]
execute if items entity @s weapon.mainhand clock run data modify storage eden:temp clock.tp.y set from entity @s respawn.pos[1]
execute if items entity @s weapon.mainhand clock run data modify storage eden:temp clock.tp.z set from entity @s respawn.pos[2]

data modify storage eden:temp clock.tp.uuid set from entity @s UUID

function wawo:clock/tp_player/adjust_height