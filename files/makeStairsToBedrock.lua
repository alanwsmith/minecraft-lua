require "/_movement"

local makeStairsToBedrock = function()
  local height = 4
  for stair = 1, 3 do
    forward(1)
    down(1)
    up(height)
    turnLeft()
    forward(1)
    down(height)
    turnRight()
    forward(1)
    down(1)
    up(height)
    turnRight()
    forward(1)
    down(height)
    turnLeft()
  end



  -- turnRight()

  -- down(height)
  -- forward(1)
  -- down(1)
  -- turnRight()
  -- forward(1)
  -- turnLeft()
  -- up(height)
  -- forward(1)

  -- turnRight()
  -- down(height)
end


makeStairsToBedrock()

print("----------------------")
print("Press any key to return to the menu")
io.read()
shell.run("menu")
