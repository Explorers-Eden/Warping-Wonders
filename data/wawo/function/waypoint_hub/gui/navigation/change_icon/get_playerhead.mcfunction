execute at @s run loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp waypoint.head.properties set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}}] Item.components.minecraft:profile.properties[0].value
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}}]