class Mastermind

    THE_COLOURS = ["b", "o", "r", "p", "g", "y"]

    def initialize
        @generated_code = []
        @guess = '' 
    end

    def reveal_user_instructions 
        puts "Welcome to the Mastermind Game!
        
        Your goal is to guess the four secret colour code and in the AI or computer\'s selected order. It\'s you against the computer. You will only have ten attempts.
        
        You can choose from the following colours:
        Blue (b), Orange (o), Red (r), purple (p), Green (g), and Yellow (y)
        You will enter your guess as such: obgy or ggrp

        If you guessed a correct colour in a correct position, you will receive a gold pin.
        If you guessed a correct colour but it\'s position is incorrect, you will receive a black pin."
    end 

    def generate_colour_code
        @generated_code = THE_COLOURS.sample(4)
        p @generated_code
    end

    def user_guesses
        @guess = gets.chomp
    end

    def comparing_user_guesses
        @guess == @generated_code
    end

    def user_feedback
        if @guess.split(//) == @generated_code
            puts "NICE. You've won the game. ^_^"
        else
            puts "NO. You've lost. Get out of here, loser. :P"
        end
    end


    def start_game
        system('clear')
        reveal_user_instructions
    end

end

