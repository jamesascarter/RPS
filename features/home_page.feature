Feature: Starting the RPS Game
			As a human player
			I want to start a new game

		Scenario: Visiting the homepage
			Given I am on the homepage
			Then I should see "Welcome to RPS"

		Scenario: Game registration
			Given I am on the homepage
			When I sign in
			Then I should enter gamepage

		Scenario: Choosing an opponent
				Given I am on the homepage
				Then choose an opponent