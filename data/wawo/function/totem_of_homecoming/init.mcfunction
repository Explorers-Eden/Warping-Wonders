advancement revoke @s only wawo:used_totem_of_homecoming

execute unless score @s wawo.totem_of_homecoming.id matches 1.. run return fail

execute store result storage eden:temp waypoint.teleport.id int 1 run scoreboard players get @s wawo.totem_of_homecoming.id
execute at @s run function wawo:totem_of_homecoming/get_data with storage eden:temp waypoint.teleport
execute at @s run function wawo:totem_of_homecoming/check_pos with storage eden:temp waypoint.teleport