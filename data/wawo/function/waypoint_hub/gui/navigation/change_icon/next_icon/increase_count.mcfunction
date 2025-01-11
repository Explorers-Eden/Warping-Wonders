

scoreboard players add @n[type=marker,tag=wawo.waypoint_hub.marker] wawo.waypoint_hub.gui.head 0
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] if score @s wawo.waypoint_hub.gui.head matches 47.. store result storage eden:temp waypoint.head.id int 1 run scoreboard players set @s wawo.waypoint_hub.gui.head -1
execute as @n[type=marker,tag=wawo.waypoint_hub.marker] if score @s wawo.waypoint_hub.gui.head matches ..46 store result storage eden:temp waypoint.head.id int 1 run scoreboard players add @s wawo.waypoint_hub.gui.head 1

function wawo:waypoint_hub/gui/navigation/change_icon/get_properties with storage eden:temp waypoint.head
