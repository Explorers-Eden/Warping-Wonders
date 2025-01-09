setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:barrel[facing=down]{CustomName:'{"bold":false,"italic":false,"text":"Waypoint Hub: Menu"}'}
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:barrel",count:1}}]