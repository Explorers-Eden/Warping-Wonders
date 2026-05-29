schedule function wawo:clock/modify/init 1s

execute unless data storage eden:settings warping_wonders.clock{active:"enabled"} run return fail

execute as @a run function wawo:clock/modify/dispatch