execute at @s if items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Previous Page","italic":false,"translate":"gui.eden.waypoint_hub.previous_page"}'] run function wawo:waypoint_hub/gui/navigation/prev_page/run
execute at @s if items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Next Page","italic":false,"translate":"gui.eden.waypoint_hub.next_page"}'] run function wawo:waypoint_hub/gui/navigation/next_page/run

execute at @s if items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Previous Icon","italic":false,"translate":"gui.eden.waypoint_hub.previous_icon"}'] run function wawo:waypoint_hub/gui/navigation/change_icon/prev_icon/run with storage eden:temp waypoint
execute at @s if items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Next Icon","italic":false,"translate":"gui.eden.waypoint_hub.next_icon"}'] run function wawo:waypoint_hub/gui/navigation/change_icon/next_icon/run with storage eden:temp waypoint

execute at @s \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Previous Icon","italic":false,"translate":"gui.eden.waypoint_hub.previous_icon"}'] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Next Icon","italic":false,"translate":"gui.eden.waypoint_hub.next_icon"}'] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Previous Page","italic":false,"translate":"gui.eden.waypoint_hub.previous_page"}'] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"Next Page","italic":false,"translate":"gui.eden.waypoint_hub.next_page"}'] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name='{"bold":false,"fallback":"This Waypoint:","italic":false,"translate":"gui.eden.waypoint_hub.this_waypoint"}'] \
unless items entity @s player.cursor light_gray_stained_glass_pane \
run function wawo:waypoint_hub/gui/teleport/run

item replace entity @s player.cursor with minecraft:air

execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players set @s wawo.waypoint_hub.gui.entry_id 0
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function wawo:waypoint_hub/gui/create/run