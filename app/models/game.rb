class Game

	attr_accessor :computer_choice, :player_wins, :computer_wins, :number_of_draws, :players

	def initialize
		@computer_choice = nil
		@player_wins = nil
		@computer_wins = nil
		@number_of_draws = nil
		@players = []
	end

	def computer_choice
		@computer_choice = ["rock", "paper", "scissors"].sample
	end

	def winner_of(weapon_choice, computer_choice)

		winninggesture = {"rock" => "scissors",
											"scissors" => "paper",
											"paper" => "rock"}

		if weapon_choice == computer_choice
			@number_of_draws =+ 1
			"It's a draw!"

		elsif winninggesture[weapon_choice] == computer_choice
				@player_wins =+ 1
				"Player wins!"

		else
				computer_wins =+ 1	 
				"Computer wins!"
		end
	end

	def add_player(player)
		@players << player
	end
end