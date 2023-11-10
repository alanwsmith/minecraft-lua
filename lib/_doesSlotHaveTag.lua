doesSlotHaveTag = function(slot, tag)
  local details = turtle.getItemDetail(slot, true)
  for key, val in pairs(details.tags) do
    if key == tag then
      return true
    end
  end
  return false
end
