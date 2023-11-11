require "/_movement"
require "/_placeTorch"

-- TODO: Look for bedrock to stop
-- TODO: Place stairs back up
-- TODO: Plug lava
-- TODO: Place base step blocks if they're not there

local makeStairsToBedrock = function()
  local height = 5
  for stair = 1, 20 do
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
    if stair % 2 == 0 then
      up(3)
      placeTorch()
      down(3)
    end
    turnLeft()
  end
end

makeStairsToBedrock()

print("----------------------")
print("Press any key to return to the menu")
io.read()
shell.run("menu")
