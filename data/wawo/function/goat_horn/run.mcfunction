advancement revoke @s only wawo:used_goat_horn
execute if score @s wawo.goat_horn.toggle matches 1.. run return fail

execute if items entity @s weapon.offhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] unless items entity @s weapon.mainhand goat_horn if data entity @s equipment.offhand.components.minecraft:custom_name run function wawo:goat_horn/named_portal/get_data
execute if items entity @s weapon.offhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] unless items entity @s weapon.mainhand goat_horn unless data entity @s equipment.offhand.components.minecraft:custom_name run function wawo:goat_horn/unnamed_portal/portal_check

execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] if data entity @s SelectedItem.components.minecraft:custom_name run function wawo:goat_horn/named_portal/get_data
execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] unless data entity @s SelectedItem.components.minecraft:custom_name run function wawo:goat_horn/unnamed_portal/portal_check

scoreboard players set @s wawo.goat_horn.timer 0
scoreboard players set @s wawo.goat_horn.toggle 1