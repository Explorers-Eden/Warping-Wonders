execute store result storage eden:temp waypoint_hub.menu.waypoint_id int 1 run scoreboard players add $waypoint_menu_id wawo.technical 1

$execute \
    if data storage eden:database waypoints.hubs.$(waypoint_id){access:"private"} \
        run execute unless data storage eden:database waypoints.hubs.$(waypoint_id){trust:[$(playername)]} \
            run execute unless data entity @p[tag=!wawo.admin,tag=wawo.opened_waypoint,distance=..16] {UUID:$(uuid)} \
                run return run function wawo:waypoint_hub/interact/right_click/menu/build/init with storage eden:temp waypoint_hub.menu

$data modify storage eden:temp waypoint_hub.menu.waypoint_menu append value \
    {\
      "label": [\
      {\
        "player": {\
        "name": "textures",\
            "properties": [\
              {\
                "name": "textures",\
                "value": "$(icon)"\
              }\
            ]\
        },\
        "color": "white"\
      },\
      {\
        "text": " $(waypoint_name)",\
        "color": "$(color)"\
      }\
      ],\
      "tooltip": [\
        [\
          "$(waypoint_description)",\
          {\
            "text": "X: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(waypoint_x)",\
            "color": "white"\
          },\
          {\
            "text": " | Y: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(waypoint_y)",\
            "color": "white"\
          },\
          {\
            "text": " | Z: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(waypoint_z)",\
            "color": "white"\
          },\
          "\n",\
          {\
            "translate": "gui.warping_wonders.waypoint_hub.dimension",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(dimension_name)",\
            "color": "white"\
          },\
          "\n\n",\
          {\
            "translate": "gui.warping_wonders.waypoint_hub.access_list",\
            "color": "dark_gray"\
          },\
          {\
            "text": " ",\
            "color": "white"\
          },\
          $(access_list),\
          "\n\n",\
          {\
            "translate": "gui.warping_wonders.waypoint_hub.owner",\
            "color": "dark_gray"\
          },\
          {\
          "player": {\
            "name": "$(owner)"\
          },\
          "color": "white"\
          },\
          " ",\
          {\
            "text": "$(owner)",\
            "color": "white"\
          },\
          {\
            "text": " | ID: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(id)",\
            "color": "dark_gray"\
          }\
        ]\
      ],\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger wawo.waypoint_hub.menu.teleport set $(id)"\
      }\
    }

function wawo:waypoint_hub/interact/right_click/menu/build/init with storage eden:temp waypoint_hub.menu