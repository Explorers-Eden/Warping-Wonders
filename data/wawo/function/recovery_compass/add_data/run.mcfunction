advancement revoke @s only wawo:holds_recovery_compass

execute unless data storage eden:settings warping_wonders.recovery_compass{active:"enabled"} run return fail

function wawo:recovery_compass/add_data/add_components
function wawo:recovery_compass/add_data/add_lore

data remove storage eden:temp recovery_compass.data