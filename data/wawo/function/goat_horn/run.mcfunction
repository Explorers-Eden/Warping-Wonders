advancement revoke @s only wawo:used_goat_horn
execute if score @s wawo.goat_horn.toggle matches 1.. run return fail

execute unless data storage eden:settings warping_wonders.portal_horn{active:"enabled"} run return fail
execute store result storage eden:temp portal_horn.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"portal_horn.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.portal_horn.exp_cost"}}} run return fail

data modify storage eden:temp goat_horn.tp.exp_cost set from storage eden:settings warping_wonders.portal_horn.exp_cost

execute if items entity @s weapon.offhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] unless items entity @s weapon.mainhand goat_horn if data entity @s equipment.offhand.components.minecraft:custom_name run function wawo:goat_horn/named_portal/get_data
execute if items entity @s weapon.offhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] unless items entity @s weapon.mainhand goat_horn unless data entity @s equipment.offhand.components.minecraft:custom_name run function wawo:goat_horn/unnamed_portal/portal_check with storage eden:temp goat_horn.tp

execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] if data entity @s SelectedItem.components.minecraft:custom_name run function wawo:goat_horn/named_portal/get_data
execute if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] unless data entity @s SelectedItem.components.minecraft:custom_name run function wawo:goat_horn/unnamed_portal/portal_check with storage eden:temp goat_horn.tp

scoreboard players set @s wawo.goat_horn.timer 0
scoreboard players set @s wawo.goat_horn.toggle 1

execute as @s[gamemode=!creative] if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.portal_horn.breaking_chance"}} if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] run return run item modify entity @s weapon.mainhand [{"function":"minecraft:set_count","count":-1,"add":true}]
execute as @s[gamemode=!creative] if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.portal_horn.breaking_chance"}} if items entity @s weapon.offhand minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp}] run return run item modify entity @s weapon.offhand [{"function":"minecraft:set_count","count":-1,"add":true}]
