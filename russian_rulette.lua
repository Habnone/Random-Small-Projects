math.randomseed(os.time())
local chamber = 1
local bullet = math.random(1, 6)
function game()
    local x = chamber
    local y = 6
    local total = x/y*100
    print("Chamber: ".. chamber.. " Change: ".. math.floor(total).. "%")
    print("Action: Shoot, Spin")
    local action = io.read()
    if action == "Spin" then
        bullet = math.random(1, 6)
        chamber = 1
        game()
    elseif chamber == bullet then -- EDIT: Made this into an ifelse statement
            print("You died")
        else
            chamber = chamber + 1
            game()
        end
    end
game()