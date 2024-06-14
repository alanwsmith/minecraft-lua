-- Run this file from a computer with:
-- wget run https://raw.githubusercontent.com/alanwsmith/minecraft-lua/main/wget-init.lua
print("Fuel Level: " .. turtle.getFuelLevel())
local domain = "https://raw.githubusercontent.com"
local path = "/alanwsmith/minecraft-lua/main/lib/_bootstrap.lua"
local response = http.get(domain .. path)
local output = fs.open("startup.lua", "w")
output.write(response.readAll())
output.close()
os.reboot()
