shell.run("clear")
print("Welcome to the Road Printer Software Installer")
print("Copyright: CraftNet Corp. 2026")

textutils.slowPrint("Please Select the Edition you wish to Install.")
print("[1] Install Road Printer Turtle")
print("[2] Install Road Printer Client")
print("[3] Update Road Printer Turtle")
print("[4] Update Road Printer Client")

local input = read()
if input == "1" then
    textutils.slowPrint("Intalling Road Printer Turtle")
    shell.run("wget https://raw.githubusercontent.com/nexus331/road_printer_cc/refs/heads/main/rp_turtle.lua")
elseif input == "2" then
    textutils.slowPrint("Installing Road Printer Client")
    shell.run("wget https://raw.githubusercontent.com/nexus331/road_printer_cc/refs/heads/main/rp_app.lua")
    elseif input == "3" then
    textutils.slowPrint("Updating Road Printer Turtle")
    print("Removing Old Version...")
    shell.run("rm rp_turtle.lua")
    sleep(0.5)
    shell.run("wget https://raw.githubusercontent.com/nexus331/road_printer_cc/refs/heads/main/rp_turtle.lua")
    elseif input == "4" then
    textutils.slowPrint("Updating Road Printer Client")
    print("Removing Old Version...")
    shell.run("rm rp_app.lua")
    sleep(0.5)
    shell.run("wget https://raw.githubusercontent.com/nexus331/road_printer_cc/refs/heads/main/rp_app.lua")
end