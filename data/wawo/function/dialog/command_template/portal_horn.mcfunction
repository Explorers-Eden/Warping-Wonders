$data modify storage eden:settings warping_wonders.portal_horn merge value {active:$(active),exp_cost:$(exp_cost),mob_teleport:$(mob_teleport),cooldown:$(cooldown)}

$scoreboard players set $cooldown wawo.goat_horn.timer $(cooldown)

$data modify storage eden:settings warping_wonders.portal_horn.breaking_chance_initial set value $(breaking_chance)
execute store result storage eden:settings warping_wonders.portal_horn.breaking_chance float 0.01 run data get storage eden:settings warping_wonders.portal_horn.breaking_chance_initial

execute if data storage eden:settings warping_wonders.portal_horn{active:"enabled"} run data modify storage eden:settings warping_wonders.portal_horn.active_initial set value "false"
execute unless data storage eden:settings warping_wonders.portal_horn{active:"enabled"} run data modify storage eden:settings warping_wonders.portal_horn.active_initial set value "true"

execute if data storage eden:settings warping_wonders.portal_horn{mob_teleport:"enabled"} run data modify storage eden:settings warping_wonders.portal_horn.mob_teleport_initial set value "false"
execute unless data storage eden:settings warping_wonders.portal_horn{mob_teleport:"enabled"} run data modify storage eden:settings warping_wonders.portal_horn.mob_teleport_initial set value "true"

dialog show @s wawo:main