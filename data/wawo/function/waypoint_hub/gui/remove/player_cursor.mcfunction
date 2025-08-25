execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

execute at @s if items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name={"bold":false,"italic":false,"translate":"gui.warping_wonders.waypoint_hub.previous_page"}] run function wawo:waypoint_hub/gui/navigation/prev_page/run
execute at @s if items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name={"bold":false,"italic":false,"translate":"gui.warping_wonders.waypoint_hub.next_page"}] run function wawo:waypoint_hub/gui/navigation/next_page/run

execute at @s \
unless items entity @s player.cursor minecraft:ominous_trial_key[minecraft:custom_data={wawo:waypoint_gui_item}] \
unless items entity @s player.cursor minecraft:trial_key[minecraft:custom_data={wawo:waypoint_gui_item}] \
unless items entity @s player.cursor minecraft:bell[minecraft:custom_data={wawo:waypoint_gui_item}] \
unless items entity @s player.cursor minecraft:barrier[minecraft:custom_data={wawo:waypoint_gui_item}] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name={"bold":false,"italic":false,"translate":"gui.warping_wonders.waypoint_hub.previous_page"}] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name={"bold":false,"italic":false,"translate":"gui.warping_wonders.waypoint_hub.next_page"}] \
unless items entity @s player.cursor minecraft:player_head[minecraft:custom_data={wawo:waypoint_gui_item},minecraft:custom_name={"bold":false,"italic":false,"translate":"gui.warping_wonders.waypoint_hub.this_waypoint"}] \
unless items entity @s player.cursor light_gray_stained_glass_pane \
run function wawo:waypoint_hub/gui/teleport/run

execute at @s if items entity @s player.cursor minecraft:ominous_trial_key[minecraft:custom_data={wawo:waypoint_gui_item}] run function wawo:waypoint_hub/gui/toggle_access/private/init
execute at @s if items entity @s player.cursor minecraft:trial_key[minecraft:custom_data={wawo:waypoint_gui_item}] run function wawo:waypoint_hub/gui/toggle_access/public/init

execute at @s if items entity @s player.cursor minecraft:bell[minecraft:custom_data={wawo:waypoint_gui_item}] run function wawo:waypoint_hub/gui/toggle_announcement/disable/init
execute at @s if items entity @s player.cursor minecraft:barrier[minecraft:custom_data={wawo:waypoint_gui_item}] run function wawo:waypoint_hub/gui/toggle_announcement/enable/init

item replace entity @s player.cursor with minecraft:air

execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players set @s wawo.waypoint_hub.gui.entry_id 0
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function wawo:waypoint_hub/gui/create/run