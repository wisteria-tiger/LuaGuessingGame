-- Author: Michael Espinosa
-- Purpose: Simulate a guessing game to guess a number between 1 and 100 in 7 tries

while true do
    io.write("Do you want to play a guessing game? (yes/no): ")
    local userChoice = string.lower(io.read())
    
    if userChoice == "yes" then
        math.randomseed(os.time())
        math.random(); math.random(); math.random();
        local random_number = math.random(1, 100)
        print("I'm thinking of random number between 1 and 100. Can you guess it in 7 tries?")

        for x = 1, 7 do
            io.write("Guess a number: ")
            local userGuess = tonumber(io.read())

            while userGuess == nil do
                io.write("Not a valid input. Try again.")
                userGuess = tonumber(io.read())
            end
            
            if userGuess == random_number then
                print("You guessed right! Congratulations!")
                break
            elseif userGuess > random_number then
                print("You guessed too high. Try again.")
            elseif userGuess < random_number then
                print("You guessed too low. Try again.")
            end
                
            if userGuess ~= random_number and x == 6 then
                print("Sorry, you lose! the number was: " .. random_number)
            end
        end
    elseif userChoice == "no" then
        print("Bye!")
        break
    end
end
