-- Road Printer Program CC Tweaked Turtles

-- Rednet information
local modemSide = "right"
local rednetProtocol = "rpnp"


-- Variables
local blocks = 0


function create_road()
    turtle.select(1)
    turtle.refuel()
    print("Refueled!")
    turtle.select(2)
    print("Selected slot 2 for road material.")
    

    for i = 1, blocks do
        turtle.placeDown()
        turtle.forward()
        turtle.digDown()
        turtle.placeDown()
    end
    rednet.broadcast("r_complete", rednetProtocol)
    print("Complete!")
end


-- Main program
print("Road Printer Program CC Tweaked Turtles")
print("Waiting for information...")

rednet.open(modemSide)
while true do
    local id, message = rednet.receive(rednetProtocol)

    blocks = tonumber(message)
    create_road()
end
