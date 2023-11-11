require "/_findSlotWithNames"

local slot = findSlotWithNames({
  "minecraft:cobblestone",
  "minecraft:dirt",
  "minecraft:grass_block",
  "minecraft:stone",
})
print(slot)

print("----------------------")
print("Press Enter to return to the menu")
io.read()
shell.run("menu")
