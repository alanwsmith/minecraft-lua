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

download("/lib/_download.lua", "_download.lua")
download("/lib/_library_loader.lua", "_library_loader.lua")
download("/menu/menu.lua", "menu.lua")
