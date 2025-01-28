execute as @p run loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp waypoint.profile_name set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}}] Item.components.minecraft:profile.name
data modify storage eden:temp waypoint.profile set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}}] Item.components.minecraft:profile
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}}]

function wawo:waypoint_hub/place/red_sandstone/unnamed/spawn with storage eden:temp waypoint

execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s run function wawo:waypoint_hub/database/start