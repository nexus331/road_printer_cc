-- Road Printer Program CC Tweaked Turtles

-- Rednet information
local modemSide = peripheral.find("modem")
local rednetProtocol = "rpnp"


-- Variables
local blocks = 0


function create_road()
    turtle.select(2)
    print("Selected slot 2 for road material.")

    for i = 1, blocks do
        turtle.placeDown()
        turtle.forward()
        turtle.digDown()
    end
    rednet.send(rednetProtocol, "r_complete")
end


-- Main program
print("Road Printer Program CC Tweaked Turtles")
print("Waiting for information...")

rednet.open(modemSide)
while true do
    local id, message = rednetProtocol.receive(rednetProtocol)

    blocks = tonumber(message)
    create_road()
end