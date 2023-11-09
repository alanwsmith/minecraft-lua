local move_backwards = function(steps)
  turtle.turnRight()
  turtle.turnRight()
  for step = 1, steps do
    print("Backwards: " .. step)
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward()
  end
  turtle.turnLeft()
  turtle.turnLeft()
end

move_backwards(arg[1])
