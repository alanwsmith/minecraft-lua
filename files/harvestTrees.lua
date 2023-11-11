require "/_movement"
require "/_doesBlockHaveTag"

local harvest = function()
  if doesBlockHaveTag("minecraft:logs") then
    print("Found tree")
  end

  print("harvesting")
end

local harvestLine = function()
  local rows = 2
  for row = 1, rows do
    turnLeft()
    harvest()
    turnRight()
    if row ~= rows then
      forward(3)
    end
  end
end

print("Harvsting Trees")
harvestLine()
turnRight()
forward(1)
turnRight()
harvestLine()
turnRight()
forward(1)
turnRight()


print("----------------------")
print("Press any key to return to the menu")
io.read()
shell.run("menu")




-- require "/_doesBlockHaveTag"
-- require "/_findSlotWithTag"

-- local get_wood = function()
--   for move = 1, 10 do
--     turtle.dig()
--     while turtle.detectUp() do
--       turtle.digUp()
--     end
--     up(1)
--   end
--   down(10)
-- end

-- local plant_sapling = function()
--   if findSlotWithTag("minecraft:saplings") ~= nil then
--     turtle.dig() -- clear snow, etc...
--     turtle.place()
--   end
-- end

-- local harvest_trees = function(trees)
--   if turtle.getFuelLevel() > 200 then
--     for loopNum = 1, trees do
--       local has_block, data = turtle.inspect()
--       if has_block then
--         for key, val in pairs(data.tags) do
--           if key == "minecraft:logs" then
--             get_wood()
--           end
--         end
--       end
--       plant_sapling()
--       left()
--       forward(2)
--       right()
--     end
--     right()
--     forward(trees * 2)
--     left()
--   else
--     print("Not enough fuel")
--   end
-- end

-- print("How many trees")
-- local numberOfTrees = tonumber(io.read())
-- harvest_trees(numberOfTrees)
