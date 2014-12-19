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

		Scenario: No name entered
			Given I am on the homepage
			When I enter ""
			Then I should see "Please enter name"

		Scenario: Choosing an opponent
				Given I am on the homepage
				Then choose an opponent

		Scenario: Choosing computer opponent
				Given I am on the homepage
				When I choose computer opponent
				When I sign in
				Then I should enter computer gamepage

		Scenario: Choosing multiplayer mode
				Given I am on the homepage
				When I choose multiplayer opponent
				When I sign in
				Then I should enter waiting page

		