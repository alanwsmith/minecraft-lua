require "/_domain"

print("Choose a program (Fuel: " .. turtle.getFuelLevel() .. ")")
print("---------------------")
print("<cr>: Terminal")
print("1 - Refuel Turtle")
print("2 - Make Stairs")

-- print("1 - Harvest Trees")
-- print("3 - Clear Chunk")
-- print("4 - Cut Hall")
-- print("5 - Make Path")
-- print("6 - Rename Turtle")

local id = io.read()

if id == "1" then
  shell.run("wget run " .. domain .. "/files/refuelTurtle.lua")
elseif id == "2" then
  shell.run("wget run " .. domain .. "/files/makeStairs.lua")
end
