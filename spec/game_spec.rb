require './app/models/game'


describe Game do

	let (:game) {Game.new}

	it "should provide a computer choice" do
		game.computer_choice
		expect(@computer_choice)
	end

  it "should return 'draw' if both players call same gesture" do
    weapon_choice = 'rock'
    computer_choice = 'rock'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("It's a draw!")
  end

  it "should return 'Player wins!' when player wins with rock" do
    weapon_choice = 'rock'
    computer_choice = 'scissors'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("Player wins!")
  end

  it "should return 'Player wins!' when player wins with paper" do
    weapon_choice = 'paper'
    computer_choice = 'rock'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("Player wins!")
  end

  it "should return 'Player wins!' when player wins with scissors" do
    weapon_choice = 'scissors'
    computer_choice = 'paper'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("Player wins!")
  end

  it "should return 'Computer wins!' when computer wins with scissors" do
    weapon_choice = 'paper'
    computer_choice = 'scissors'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("Computer wins!")
  end

  it "should return 'Computer wins!' when computer wins with paper" do
    weapon_choice = 'rock'
    computer_choice = 'paper'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("Computer wins!")
  end

   it "should return 'Computer wins!' when computer wins with rock" do
    weapon_choice = 'scissors'
    computer_choice = 'rock'
    expect(game.winner_of(weapon_choice, computer_choice)).to eq("Computer wins!")
  end


end