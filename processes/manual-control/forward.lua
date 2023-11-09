local move_forward = function(steps)
  for step = 1, steps do
    print("Forward: " .. step)
    turtle.digUp()
    turtle.digDown()
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward()
  end
end

move_forward(arg[1])
