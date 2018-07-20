require_relative "mastermind"

#object      #class
mastermind = Mastermind.new

#object     #method
mastermind.start_game

mastermind.generate_colour_code 

mastermind.user_guesses
mastermind.comparing_user_guesses
mastermind.user_feedback