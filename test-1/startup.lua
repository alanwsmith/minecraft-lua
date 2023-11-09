local response = http.get("https://raw.githubusercontent.com/alanwsmith/minecraft-lua/main/test-1/index.lua")
local status = response.getResponseCode()

if status == 200 then
  print("Got main.lua")
end
