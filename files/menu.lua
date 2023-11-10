local commands = {
  "refuelTurtle",
  "makeStairsToBedrock",
  "getAllSlotDetails",
}

print("---------------------")
print("Choose a program (Fuel: " .. turtle.getFuelLevel() .. ")")
print("---------------------")
print("<cr> - Terminal")

for k, v in ipairs(commands) do
  print(k .. " - " .. v)
end

local id = io.read()

if id ~= "" then
  local indexNum = tonumber(id)
  local command = commands[indexNum]
  if command then
    local domainFile = fs.open("_domain.txt", "r")
    local domain = domainFile.readLine()
    domainFile.close()
    shell.run("wget run " .. domain .. "/files/" .. command .. ".lua")
    print("")
  else
    print("---------------------")
    print("Not a valid command")
    shell.run("menu")
  end
end


-- print("1 - Harvest Trees")
-- print("3 - Clear Chunk")
-- print("4 - Cut Hall")
-- print("5 - Make Path")
-- print("6 - Rename Turtle")



-- if id == "1" then
--   shell.run("wget run " .. domain .. "/files/refuelTurtle.lua")
-- elseif id == "2" then
--   shell.run("wget run " .. domain .. "/files/makeStairs.lua")
-- end
