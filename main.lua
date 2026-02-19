-- Author: Michael Espinosa
-- Purpose: Simulate a guessing game to guess a number between 1 and 100 in 7 tries

-- While loop to determine if the user wants to keep playing or not
while true do
    io.write("Do you want to play a guessing game? (yes/no): ")
    local userChoice = string.lower(io.read())
    
    -- Error checking
    if userChoice == nil then
        io.write("Not a valid input. Try again. ")
        userChoice = string.lower(io.read())
    end

    -- Runs the guessing game if user chooses to play
    if userChoice == "yes" then
        --Stores a random number
        math.randomseed(os.time())
        math.random(); math.random(); math.random();
        local random_number = math.random(1, 100)
        print("I'm thinking of random number between 1 and 100. Can you guess it in 7 tries?")

        -- for loop that runs 7 times 
        for x = 1, 7 do
            io.write("Guess a number: ")
            local userGuess = tonumber(io.read())
            
            -- Error checking
            while userGuess == nil do
                io.write("Not a valid input. Try again. ")
                userGuess = tonumber(io.read())
            end
            
            -- Handles if the user wins, guesses to low or too high
            if userGuess == random_number then
                print("You guessed right! Congratulations! ")
                break
            elseif userGuess > random_number then
                print("You guessed too high. Try again. ")
            elseif userGuess < random_number then
                print("You guessed too low. Try again. ")
            end
            
            -- Handles if the user loses
            if userGuess ~= random_number and x == 6 then
                print("Sorry, you lose! the number was: " .. random_number)
            end
        end
    
    -- Ends the game
    elseif userChoice == "no" then
        print("Bye!")
        break
    end
end
