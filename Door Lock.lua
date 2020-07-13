-- Dor loc by me --
os.pullEvent = os.pullEventRaw

-- Passwords --
local passwords = {
    ["pog"] = true,
    ["lemon"] = "admin",
}

while true do 
    term.setBackgroundColor(colors.white)
    term.setTextColor(colors.black)
    term.clear()
    term.setCursorPos(16,6)
    term.write("Enter Password")
    term.setCursorPos(16,8)
    term.write("> ")
    local input = read("*")
    if passwords[input] == "admin" then
        break
    elseif passwords[input] then
        term.setCursorPos(16,10)
        term.write("Welcome Dumbass")
        rs.setOutput("right",true)
        sleep(3)
        rs.setOutput("right",false)
    else
        term.setCursorPos(16,10)
        term.write("Fuck off you lamer")
        sleep(3)
    end    
end
