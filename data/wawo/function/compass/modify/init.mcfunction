schedule function wawo:compass/modify/init 1s

execute unless data storage eden:settings warping_wonders.compass{active:"enabled"} run return fail

execute as @a run function wawo:compass/modify/dispatch