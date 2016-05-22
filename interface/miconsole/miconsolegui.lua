function init()
  local testbutton = TextButton(10, 10, 100, 16, "Make window")
  testbutton.onClick = testButtonClick
  GUI.add(testbutton)
end

function testButtonClick(button, mouseButton)
  local frame = Frame(100, 50)
  GUI.add(frame)
  local testTextButton = TextButton(80, 20, 100, 16, "text")
  testTextButton.onClick = function(button)
    GUI.remove(frame)
  end
  frame:add(testTextButton)
  
  local testField = TextField(20, 20, 50, 16, "text")
  testField.onEnter = function(field)
    testTextButton.text = field.text
  end
  frame:add(testField)

  frame:pack(20)
end

function update(dt)
  GUI.step(dt)
end

function canvasClickEvent(position, button, pressed)
  GUI.clickEvent(position, button, pressed)
end

function canvasKeyEvent(key, isKeyDown)
  GUI.keyEvent(key, isKeyDown)
end