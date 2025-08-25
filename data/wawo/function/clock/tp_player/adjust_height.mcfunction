execute store result score $wawo.spawn.y wawo.technical run data get storage eden:temp clock.tp.y
scoreboard players operation $wawo.spawn.y wawo.technical += $2 wawo.technical
execute store result storage eden:temp clock.tp.y_adj int 1 run scoreboard players get $wawo.spawn.y wawo.technical

function wawo:clock/tp_player/execute_tp with storage eden:temp clock.tp