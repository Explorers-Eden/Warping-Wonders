$item replace block ~ ~ ~ container.22 with minecraft:player_head[custom_name={"bold":false,"fallback":"This Waypoint:","italic":false,"translate":"gui.eden.waypoint_hub.this_waypoint"},custom_data={wawo:waypoint_gui_item},profile={id:[I;1731215105,-1235661595,-2029603293,-1586750030],properties:[{name:"textures",value:"$(properties)"}]}]

$execute if data storage eden:database waypoints.hubs.$(entry_id){access:"private"} run \
item modify block ~ ~ ~ container.22 [{"function":"minecraft:set_lore","entity":"this","lore":[\
    [{"text":"X: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).pos.x","storage":"eden:database","color":"white","bold":false,"italic":false},{"text":" | Y: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).pos.y","storage":"eden:database","color":"white","bold":false,"italic":false},{"text":" | Z: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).pos.z","storage":"eden:database","color":"white","bold":false,"italic":false}],\
    [{"translate":"gui.eden.waypoint_hub.dimension","fallback":"Dimension: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).dimension_name","storage":"eden:database","color":"white","bold":false,"italic":false}],\
    [{"translate":"gui.eden.waypoint_hub.access","fallback":"Access: ","color":"dark_gray","bold":false,"italic":false},{"translate":"gui.eden.waypoint_hub.private","fallback":"Private","color":"red","bold":false,"italic":false}],\
    [{"text":"  "}],\
    [{"translate":"gui.eden.waypoint_hub.owner","fallback":"Owner: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).profile.name","storage":"eden:database","color":"white","bold":false,"italic":false},{"text":" | ID: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoint.entry_id","storage":"eden:temp","color":"white","bold":false,"italic":false}],\
        ],"mode":"replace_all"}]

$execute unless data storage eden:database waypoints.hubs.$(entry_id){access:"private"} run \
item modify block ~ ~ ~ container.22 [{"function":"minecraft:set_lore","entity":"this","lore":[\
    [{"text":"X: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).pos.x","storage":"eden:database","color":"white","bold":false,"italic":false},{"text":" | Y: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).pos.y","storage":"eden:database","color":"white","bold":false,"italic":false},{"text":" | Z: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).pos.z","storage":"eden:database","color":"white","bold":false,"italic":false}],\
    [{"translate":"gui.eden.waypoint_hub.dimension","fallback":"Dimension: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).dimension_name","storage":"eden:database","color":"white","bold":false,"italic":false}],\
    [{"translate":"gui.eden.waypoint_hub.access","fallback":"Access: ","color":"dark_gray","bold":false,"italic":false},{"translate":"gui.eden.waypoint_hub.public","fallback":"Public","color":"green","bold":false,"italic":false}],\
    [{"text":"  "}],\
    [{"translate":"gui.eden.waypoint_hub.owner","fallback":"Owner: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoints.hubs.$(entry_id).profile.name","storage":"eden:database","color":"white","bold":false,"italic":false},{"text":" | ID: ","color":"dark_gray","bold":false,"italic":false},{"nbt":"waypoint.entry_id","storage":"eden:temp","color":"white","bold":false,"italic":false}],\
        ],"mode":"replace_all"}]

$execute unless data storage eden:database waypoints.hubs.$(entry_id){access:"private"} run item replace block ~ ~ ~ container.24 with minecraft:ominous_trial_key[custom_name={"bold":false,"fallback":"Toggle Access","italic":false,"translate":"gui.eden.waypoint_hub.toggle_access"},custom_data={wawo:waypoint_gui_item}]
$execute if data storage eden:database waypoints.hubs.$(entry_id){access:"private"} run item replace block ~ ~ ~ container.24 with minecraft:trial_key[custom_name={"bold":false,"fallback":"Toggle Access","italic":false,"translate":"gui.eden.waypoint_hub.toggle_access"},custom_data={wawo:waypoint_gui_item}]

$execute unless data storage eden:database waypoints.hubs.$(entry_id){announcement:"enabled"} run item replace block ~ ~ ~ container.20 with minecraft:barrier[custom_name={"color":"white","bold":false,"fallback":"Toggle Announcement","italic":false,"translate":"gui.eden.waypoint_hub.toggle_announcement"},custom_data={wawo:waypoint_gui_item}]
$execute if data storage eden:database waypoints.hubs.$(entry_id){announcement:"enabled"} run item replace block ~ ~ ~ container.20 with minecraft:bell[custom_name={"color":"white","bold":false,"fallback":"Toggle Announcement","italic":false,"translate":"gui.eden.waypoint_hub.toggle_announcement"},custom_data={wawo:waypoint_gui_item}]
