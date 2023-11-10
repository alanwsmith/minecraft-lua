print("Running bootstrap")

downloadFile = function(fileName)
  print("Getting: " .. fileName)
  local domainFile = fs.open("_domain.txt", "r")
  local domain = domainFile.readLine()
  domainFile.close()
  local url = domain .. "/files/" .. fileName
  local response = http.get(url)
  if response then
    local status = response.getResponseCode()
    if status == 200 then
      local output = fs.open(fileName, "w")
      local data = response.readAll()
      output.write(data)
      output.close()
    else
      print("Non 200 response for: " .. fileName)
    end
  else
    print("Unknown error for: " .. fileName)
  end
end

downloadFile("_movement.lua")
downloadFile("left.lua")
downloadFile("back.lua")
downloadFile("down.lua")
downloadFile("forward.lua")
downloadFile("getAllSlotDetails.lua")
downloadFile("menu.lua")
downloadFile("renameTurtle.lua")
downloadFile("right.lua")
downloadFile("startup.lua")
downloadFile("up.lua")

shell.run("menu")
