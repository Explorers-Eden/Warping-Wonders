schedule function wawo:recovery_compass/modify/init 1s

execute unless data storage eden:settings warping_wonders.recovery_compass{active:"enabled"} run return fail

execute as @a run function wawo:recovery_compass/modify/dispatch