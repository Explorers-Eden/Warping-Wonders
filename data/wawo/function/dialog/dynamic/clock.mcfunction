$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "body":[\
    {\
      "type":"minecraft:item",\
      "item":{\
        "id":"minecraft:clock",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          }\
        }\
      },\
      "description":{\
        "translate":"menu.warping_wonders.clock.description",\
        "fallback":"Configure Clock Settings:"\
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
      "type":"minecraft:number_range",\
      "key":"breaking_chance",\
      "width": 256,\
      "label":{\
        "translate":"option.warping_wonders.breaking_chance",\
        "fallback":"Chance of Item breaking"\
      },\
      "label_format": "options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(breaking_chance_initial)\
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
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title": {\
    "translate": "items.minecraft.clock"\
  },\
  "title": {\
    "translate": "menu.warping_wonders.clock.title",\
    "fallback": "Warping Wonders: Clock Configuration"\
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