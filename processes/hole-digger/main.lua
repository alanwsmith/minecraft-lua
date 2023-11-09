require "/_movement"

if turtle.getFuelLevel() > 100 then
cut_hall(10)
back(20)
else
    print("not enough fuel")
end

