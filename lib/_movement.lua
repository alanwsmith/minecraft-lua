 cut_hall = function(steps)
  -- cut an inital up and down
  while turtle.detectUp() do
    turtle.digUp()
  end
  while turtle.detectDown() do
    turtle.digDown()
  end

  -- move forward cutting up and
  -- down and checking to make sure
  -- the path is clear first
  for step = 1, steps do
    print("-- Fuel: " .. turtle.getFuelLevel())
    print("-- Move forward: " .. step)
    while turtle.detect() do
      turtle.dig()
    end
    turtle.forward()
    while turtle.detectUp() do
      turtle.digUp()
    end
    while turtle.detectDown() do
      turtle.digDown()
    end
  end
 end
 
 back = function(steps)
    turtle.turnRight()
    turtle.turnRight()
    for step = 1, steps do
      print("-- Fuel: " .. turtle.getFuelLevel())
      print("-- Move back: " .. step)
      while turtle.detect() do
        turtle.dig()
      end
      turtle.forward()
    end
    turtle.turnLeft()
    turtle.turnLeft()
  end

   down = function(steps)
    for step = 1, steps do
      print("-- Fuel: " .. turtle.getFuelLevel())
      print("-- Move down: " .. step)
      while turtle.detectDown() do
        turtle.digDown()
      end
      turtle.down()
    end
  end
  
   forward = function(steps)
    for step = 1, steps do
      print("-- Fuel: " .. turtle.getFuelLevel())
      print("-- Move forward: " .. step)
      while turtle.detect() do
        turtle.dig()
      end
      turtle.forward()
    end
  end

  left = function()
    print("-- Move: Turning left")
    turtle.turnLeft()
  end

  right = function()
    print("-- Move: Turning right")
    turtle.turnRight()
  end

 up = function(steps)
    for step = 1, steps do
      print("-- Fuel: " .. turtle.getFuelLevel())
      print("-- Move up: " .. step)
      while turtle.detectUp() do
        turtle.digUp()
      end
      turtle.up()
    end
  end
  
  