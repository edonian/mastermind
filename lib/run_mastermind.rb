require_relative "mastermind"

mastermind = Mastermind.new
mastermind.start_game

mastermind.generate_colour_code
mastermind.user_guesses
mastermind.comparing_user_guesses