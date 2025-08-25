setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:barrel[facing=down]{CustomName:{"bold":false,"italic":false,"translate":"gui.warping_wonders.waypoint_hub.menu.title"}}
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:barrel",count:1}}]