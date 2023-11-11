require "/_movement"
require "/_placeTorch"

-- TODO: Look for bedrock to stop
-- TODO: Place stairs back up
-- TODO: Plug lava
-- TODO: Place base step blocks if they're not there
--

makeSureThereIsFloor = function()
  local has_block, data = turtle.inspectDown()
  if has_block == false then
    print("missing floor")
    down(1)
    makeSureThereIsFloor()
    up(1)
  end
end

local makeStairsToBedrock = function()
  local height = 5
  local steps = 2
  for stair = 1, steps do
    forward(1)
    down(1)
    makeSureThereIsFloor()
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

  -- come back
  turnRight()
  turnRight()
  up(2)
  for stair = 1, steps + 1 do
    forward(1)
    up(1)
  end
  forward(1)
  down(1)
  turnLeft()
  turnLeft()
end

makeStairsToBedrock()

print("----------------------")
print("Press any key to return to the menu")
io.read()
shell.run("menu")
