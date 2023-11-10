require "/_movement"

local get_wood = function()
  for move = 1, 10 do
    turtle.dig()
    while turtle.detectUp() do
      turtle.digUp()
    end
    up(1)
  end
  down(10)
end

local plant_sapling = function()
  turtle.place()
end

if turtle.getFuelLevel() > 100 then
  local trees = 18
  for loopNum = 1, trees do
    get_wood()
    plant_sapling()
    left()
    forward(2)
    right()
  end
  right()
  forward(trees * 2)
  left()
else
  print("Not enough fuel")
end
