$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "body":[\
    {\
      "type":"minecraft:item",\
      "item":{\
        "id":"minecraft:armor_stand",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          },\
          "minecraft:item_model": "wawo:waypoint_hub/oxidized_copper"\
        }\
      },\
      "description":{\
        "translate":"menu.warping_wonders.waypoint_hub.description",\
        "fallback":"Configure Waypoint Hub Settings:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      "type":"minecraft:single_option",\
      "key":"active",\
      "width": 256,\
      "label":{\
        "translate":"option.warping_wonders.active",\
        "fallback":"Active"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.warping_wonders.enabled",\
            "fallback":"Enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.warping_wonders.disabled",\
            "fallback":"Disabled",\
            "color":"red"\
          },\
          "initial":$(active_initial)\
        }\
      ]\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"exp_cost",\
      "width": 256,\
      "label":{\
        "translate":"option.warping_wonders.exp_cost",\
        "fallback":"Exp Level Cost"\
      },\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(exp_cost)\
    },\
    {\
      "type":"minecraft:single_option",\
      "key":"mob_teleport",\
      "width": 256,\
      "label":{\
        "translate":"option.warping_wonders.mob_teleport",\
        "fallback":"Teleport includes leashed Mobs"\
      },\
      "options":[\
        {\
          "id":"enabled",\
          "display":{\
            "translate":"option.warping_wonders.enabled",\
            "fallback":"Enabled",\
            "color":"green"\
          }\
        },\
        {\
          "id":"disabled",\
          "display":{\
            "translate":"option.warping_wonders.disabled",\
            "fallback":"Disabled",\
            "color":"red"\
          },\
          "initial":$(mob_teleport_initial)\
        }\
      ]\
    },\
    {\
        "type":"minecraft:number_range",\
        "key":"min_distance",\
        "width": 256,\
        "label":{\
          "translate":"option.warping_wonders.min_distance",\
          "fallback":"Min Distance between Waypoint Hubs"\
        },\
        "start":8,\
        "end":512,\
        "step":8,\
        "initial":$(min_distance)\
      },\
      {\
        "type":"minecraft:number_range",\
        "key":"player_limit",\
        "width": 256,\
        "label":{\
          "translate":"option.warping_wonders.player_limit",\
          "fallback":"Max Waypoint Hubs per Player"\
        },\
        "start":1,\
        "end":128,\
        "step":1,\
        "initial":$(player_limit)\
      }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title": {\
    "translate": "items.minecraft.waypoint_hub"\
  },\
  "title": {\
    "translate": "menu.warping_wonders.waypoint_hub.title",\
    "fallback": "Warping Wonders: Waypoint Hub Configuration"\
  },\
  "yes":{\
    "label":{\
      "translate":"option.warping_wonders.confirm",\
      "fallback":"Confirm"\
    },\
    "action":{\
      "type":"minecraft:dynamic/run_command",\
      "template":"$(command_template)"\
    }\
  },\
  "no":{\
    "label":{\
      "translate":"gui.back"\
    },\
    "action":{\
      "type":"minecraft:show_dialog",\
      "dialog":"wawo:main"\
    }\
  }\
}