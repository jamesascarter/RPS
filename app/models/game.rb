class Game

	attr_accessor :player, :winner, :computer_choice

	def initialize
		@computer_choice = nil
	end

	def computer_choice
		@computer_choice = ["rock", "paper", "scissors"].sample
	end

	def winner_of(weapon_choice, computer_choice)
		winninggesture = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
		if weapon_choice == computer_choice
			"It's a draw!"
		elsif winninggesture[weapon_choice] == computer_choice
				"Player wins!"
		else "Computer wins!"
		end
	end
end