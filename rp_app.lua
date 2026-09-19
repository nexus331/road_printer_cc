-- Road Printer Program CC Tweaked Application

-- Rednet information
local modemSide = peripheral.find("modem")
local rednetProtocol = "rpnp"

-- Variables
local blocks = 0

function send_road_info()
    print("Enter the number of blocks for the road:")
    blocks = tonumber(io.read())
    rednet.open(modemSide)
    rednet.broadcast(blocks, rednetProtocol)
    print("Sent road information: " .. blocks .. " blocks.")
end

while true do
    send_road_info()
    print("Waiting for the turtle to complete the road...")
    local id, message = rednet.receive(rednetProtocol)
    if message == "r_complete" then
        print("Road construction completed by turtle with ID: " .. id)
    end
end