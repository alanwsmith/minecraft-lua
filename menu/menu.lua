require "/_library_loader"

-- turtle.refuel()

local fuel = turtle.getFuelLevel()

if fuel > 100 then
  print("---------------------------")
  print("-- Curnet Fuel: " .. turtle.getFuelLevel() .. " --")
  print("---------------------------")

  print("Choose a program to run")
  print("1 - Harvest Trees")
  print("2 - Make Stairs")
  print("3 - Cut Chunk")
  print("4 - Cut Hall")
  local id = io.read()

  if id == "1" then
    print("Harvesting Trees")
    shell.execute("harvest-trees")
  elseif id == "2" then
    print("Making Stairs")
    shell.execute("make-stairs")
  elseif id == "3" then
    print("Cutting Chunk")
    shell.execute("cut-chunk")
  elseif id == "4" then
    shell.execute("cut_hall")
  else
    print("No match")
  end
else
  print("Needs refuel (less than 100)")
end
