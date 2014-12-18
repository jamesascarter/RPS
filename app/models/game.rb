class Game

	attr_accessor :player, :winner, :computer_choice, :player_wins, :computer_wins

	def initialize
		@computer_choice = nil
		@player_wins = nil
		@computer_wins = nil
	end

	def computer_choice
		@computer_choice = ["rock", "paper", "scissors"].sample
	end

	def winner_of(weapon_choice, computer_choice)
		winninggesture = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
		if weapon_choice == computer_choice
			"It's a draw!"

		elsif winninggesture[weapon_choice] == computer_choice
				@player_wins = player_wins =+ 1
				"Player wins!"

		else
				@computer_wins = computer_wins =+ 1	 
				"Computer wins!"
		end
	end
end