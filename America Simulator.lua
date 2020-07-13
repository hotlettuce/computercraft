-- America Simulator --

-- Functions
local function drawFlag(x,y)
    term.setBackgroundColor(colors.blue)
    term.setCursorPos(x,y)
    write("   ")
    term.setBackgroundColor(colors.red)
    write("    ")
    term.setCursorPos(x,y+1)
    term.setBackgroundColor(colors.blue)
    write("   ")
    term.setBackgroundColor(colors.white)
    write("    ")
    term.setCursorPos(x,y+2)
    term.setBackgroundColor(colors.red)
    write("       ")
    term.setCursorPos(x,y+3)
    term.setBackgroundColor(colors.white)
    write("       ")
end

-- Main Menu
while true do
    term.setBackgroundColor(colors.lightGray)
    term.setTextColor(colors.red)
    term.clear()
    drawFlag(4,4)
    term.setBackgroundColor(colors.lightGray)
    term.setCursorPos(4,10)
    write("America Simulator")
    term.setBackgroundColor(colors.white)
    term.setTextColor(colors.gray)
    term.setCursorPos(4,12)
    write(" Play ")
    term.setCursorPos(4,14)
    write(" Info ")
    term.setCursorPos(4,16)
    write(" Exit ")
    local event,click,x,y = os.pullEvent("mouse_click")
    if y == 16 then 
        break 
    elseif y == 14 then
        term.clear()
        term.setCursorPos(2,2)
        write("FREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDOM")
        term.setCursorPos(2,18)
        write("PRESS ANY KEY TO CONTINUE")
        os.pullEvent("key")
    elseif y == 12 then 
        for level=1,4 do
            local levelTime = 5/level
            local fail = false
            term.setBackgroundColor(colors.gray)
            term.clear()
            term.setTextColor(colors.white)
            term.setCursorPos(2,2)
            write("LEVEL "..tostring(level))
            sleep(2)
            for target = 1,3 do
                local targetX,targetY = math.random(1,51),math.random(1,19)
                term.setBackgroundColor(colors.black)
                term.clear()
                term.setCursorPos(targetX,targetY)
                term.setTextColor(colors.lightBlue)
                write("X")
                local timer = os.startTimer(levelTime)
                while true do
                    local e,c,x,y = os.pullEvent()
                    if e == "timer" and c == timer then
                        fail = true
                        break
                    elseif e == "mouse_click" and x == targetX and y == targetY then 
                        break
                    end
                end
                if fail then 
                    break 
                end
            end
            if fail then
                term.setBackgroundColor(colors.blue)
                term.clear()
                term.setCursorPos(2,2)
                term.setTextColor(colors.white)
                write("You're such a lamer")
                term.setCursorPos(2,4)
                write("(you lost)")
                sleep(3)
                break
            end
            if level == 4 then
                for i=1,8 do
                    term.setBackgroundColor(colors.black)
                    term.clear()
                    sleep(0.5)
                    term.setCursorPos(2,2)
                    term.setTextColor(colors.white)
                    write("You a ")
                    term.setTextColor(colors.yellow)
                    write("Radical Lemon")
                    term.setTextColor(colors.white)
                    write("!")
                    term.setCursorPos(2,4)
                    term.setTextColor(colors.gray)
                    write("(you win)")
                    sleep(0.5)
                end
            end
        end 
    end
end
