-- Author: Michael Espinosa
-- Purpose: Simulate a guessing game to guess a number between 1 and 100 in 7 tries

while true do
    io.write("Do you want to play a guessing game? (yes/no)")
    local userChoice = io.read()

    while userChoice == nil do
        io.write("Not a valid input. Try again.")
        local userChoice = io.read()
    end
    if userChoice == "yes" then
        for x = 1, 7 do
            
        end
    end
end
