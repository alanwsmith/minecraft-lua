local download = function(url_path, output_name)
    local domain = "http://aws-minecraft-files.s3-website-us-east-1.amazonaws.com"
    print("Getting: " .. output_name)
    local response = http.get(domain .. url_path)
    local status = response.getResponseCode()
    if status == 200 then
      local output = fs.open(output_name, "w")
      local data = response.readAll()
      output.write(data)
      output.close()
    else
      print("Could not load: " .. url_path)
    end
  end

  download("/lib/_init.lua", "_init.lua")
  download("/lib/_download.lua", "_download.lua")
  download("/lib/_movement.lua", "_movement.lua")
download("/move/left.lua", "left.lua")
download("/move/right.lua", "right.lua")
download("/move/up.lua", "up.lua")
download("/move/down.lua", "down.lua")
download("/move/forward.lua", "forward.lua")
download("/move/back.lua", "back.lua")

local name_file = fs.open("name.txt", "r")
local name = name_file.readLine()
download(name, "startup.lua")

os.reboot()

