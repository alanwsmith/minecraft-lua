print("Loading Tree Harvester")

require "/_download"
-- regrab the startup file
download("/processes/tree-harvester/startup.lua", "startup.lua")




-- local script_getter = function(url_path, output_name)
--   print("Getting: " .. output_name)
--   local domain = "http://aws-minecraft-files.s3-website-us-east-1.amazonaws.com"
--   local response = http.get(domain .. url_path)
--   local status = response.getResponseCode()
--   if status == 200 then
--     print("Got: " .. output_name)
--     local output = fs.open(output_name, "w")
--     local data = response.readAll()
--     output.write(data)
--     output.close()
--   else
--     print("Could not load startup")
--   end
-- end


-- -- update the startup file
-- script_getter(
--   "/processes/tree-harvester/startup.lua",
--   "startup.lua"
-- )

-- -- get the lib files
-- script_getter(
--   "/lib/_downloader.lua",
--   "_downloader.lua"
-- )
