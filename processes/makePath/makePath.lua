local makePath = function(length)
  for step = 1, length do
    if turtle.detectDown() ~= nil then
      turtle.placeDown()
    end
  end
end
