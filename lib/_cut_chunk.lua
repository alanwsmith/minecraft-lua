require "/_movement"

cut_chunk = function() 
turtle.refuel()
if turtle.getFuelLevel() > 400 then
    for step = 1, 8 do
        cut_hall(15)
        left()
        cut_hall(1)
        left()
        cut_hall(15)
        right()
        cut_hall(1)
        right()
    end
else
    print("not enough fuel")
end

end
