execute store result score $wawo.death.y wawo.technical run data get storage eden:temp recovery_compass.tp.y
scoreboard players operation $wawo.death.y wawo.technical += $2 wawo.technical
execute store result storage eden:temp recovery_compass.tp.y_adj int 1 run scoreboard players get $wawo.death.y wawo.technical

function wawo:recovery_compass/tp_player/execute_tp with storage eden:temp recovery_compass.tp