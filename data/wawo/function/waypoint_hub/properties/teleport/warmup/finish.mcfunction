tag @s remove wawo.waypoint_hub.warmup.active
title @s actionbar ""

scoreboard players operation @s wawo.waypoint_hub.menu.teleport = @s wawo.waypoint_hub.warmup.id
function wawo:waypoint_hub/properties/teleport/exec
scoreboard players set @s wawo.waypoint_hub.menu.teleport 0

function wawo:waypoint_hub/properties/teleport/warmup/clear
