Blockly.Blocks['minetest_turn'] =
  init: ->
    @appendDummyInput()
      .appendField("turn")
      .appendField(new Blockly.FieldDropdown([
        ["left ↺", "turnLeft();"]
        ["right ↻", "turnRight();"]
        ["random", "turnRandom();"]
      ]), "ACTION")
    @setPreviousStatement(true, null)
    @setNextStatement(true, null)
    @setColour(185)


getCode = (language, block) ->
  switch language
    when "JavaScript"
      "#{block.getFieldValue('ACTION')}\n"
    when "Ruby"
      "#{block.getFieldValue('ACTION').replace(';', '')}\n"


apply = (language) ->
  Blockly[language]["minetest_turn"] = (block) ->
    getCode(language, block)


for language in [
  "JavaScript"
  "Ruby"
]
  apply(language)
