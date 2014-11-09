Feature: Playing the RPS game
			As a human player
			I want to play the computer


			Scenario: Visiting the gamepage
				Given I am on the gamepage
				Then I should see "Enter Rock Paper or Scissors"

			Scenario: Playing the game
				Given I am on the gamepage
				Then I choose a choice of weapon

				Scenario: Determining a winner
				Given I am on the gamepage
				When I click the fight button
				Then I should see content determining the winner