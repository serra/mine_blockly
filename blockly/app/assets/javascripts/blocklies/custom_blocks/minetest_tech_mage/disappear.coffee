Blockly.Blocks["minetest_disappear"] =
  init: ->
    @appendDummyInput()
        .appendField("disappear")
    @setPreviousStatement(true, null)
    @setNextStatement(true, null)
    @setColour(185)

getCode = (language) ->
  switch language
    when "JavaScript"
      "disappear();\n"
    when "Ruby"
      "disappear()\n"

apply = (language) ->
  Blockly[language]["minetest_disappear"] = (block) ->
    getCode(language)

for language in [
  "JavaScript"
  "Ruby"
]
  apply(language)