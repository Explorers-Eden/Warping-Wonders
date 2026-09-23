$dialog show @s \
{\
  "type": "minecraft:multi_action",\
  "title": {\
    "translate": "item.warping_wonders.portal_horn",\
    "fallback":"Portal Horn"\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": {\
      "translate": "menu.warping_wonders.portal_horn.main.description",\
      "fallback":"Select a Player to send a teleport request to:",\
      "italic": false\
    }\
  },\
  "can_close_with_escape": true,\
  "pause": false,\
  "after_action": "close",\
  "exit_action": {\
    "label": {\
      "translate": "option.warping_wonders.close",\
      "fallback":"Close"\
    }\
  },\
  "columns": 3,\
  "actions": $(actions)\
}