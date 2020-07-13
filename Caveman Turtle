--/ New Gen /--
local args = {...}

local length = tonumber(args[1])

if not length then
    printError("Invalid length")
    return
end

--/ Refuel /--
shell.run("Check.lua")

--/ Functions /--
local function forward()
    repeat
        turtle.dig()
    until turtle.forward()
end

--/ Mine /--
for i=1,length do
    print(" Mine "..tostring(i).." / "..tostring(length)) 

    turtle.turnLeft() 
    turtle.dig()
    turtle.turnRight() 
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft() 
    turtle.digUp()
    turtle.up()
    turtle.turnLeft() 
    turtle.dig()
    turtle.turnRight() 
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft() 
    turtle.digUp()
    turtle.up()
    turtle.turnLeft() 
    turtle.dig()
    turtle.turnRight() 
    turtle.turnRight()
    turtle.dig()
    turtle.turnLeft() 
    turtle.down() 
    turtle.down()
    turtle.dig() 
    turtle.forward()
end
