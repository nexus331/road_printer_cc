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

    local selectedSlot = 1
    turtle.select(selectedSlot)

    local currentCount = turtle.getItemCount(selectedSlot)

    if currentCount == 0 then 
    selectedSlot = selectedSlot + 1

    if selectedSlot == 17 then
    selectedSlot = selectedSlot - 16
    end
    turtle.select(selectedSlot)
    end
    
        turtle.placeDown()
        turtle.forward()
        turtle.digDown()
        turtle.placeDown()
        turtle.forward()
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

-- Turtle Inventory Checker

local selectedSlot = 1
turtle.select(selectedSlot)

while true do

local currentCount = turtle.getItemCount(selectedSlot)


if currentCount == 0 then 
selectedSlot = selectedSlot + 1

if selectedSlot == 17 then
    selectedSlot = selectedSlot - 16
end
turtle.select(selectedSlot)
end

end