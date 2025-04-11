data modify storage eden:temp goat_horn.tp.uuid set from entity @s UUID
execute if items entity @s weapon.mainhand minecraft:goat_horn if data entity @s SelectedItem.components.minecraft:custom_name run data modify storage eden:temp goat_horn.tp.portal_name set from entity @s SelectedItem.components.minecraft:custom_name
execute if items entity @s weapon.offhand minecraft:goat_horn unless items entity @s weapon.mainhand minecraft:goat_horn if data entity @s equipment.offhand.components.minecraft:custom_name run data modify storage eden:temp goat_horn.tp.portal_name set from entity @s equipment.offhand.components.minecraft:custom_name

function wawo:goat_horn/named_portal/portal_check with storage eden:temp goat_horn.tp