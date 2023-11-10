require "/_movement"
require "/_placeTorch"

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
    -- place torch
    if stair % 2 == 0 then
      placeTorch()
    end
    turnLeft()
  end
end

makeStairsToBedrock()

print("----------------------")
print("Press any key to return to the menu")
io.read()
shell.run("menu")
