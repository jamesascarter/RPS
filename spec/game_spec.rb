require './app/models/game'


describe Game do

	let (:game) {Game.new}
  let (:player) {Player.new("James")}
  let (:player1) {Player.new("Ella")}

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

  it "should keep track of the number of wins to the player" do
    weapon_choice = 'scissors'
    computer_choice = 'paper'
    game.winner_of(weapon_choice, computer_choice)
    expect(game.player_wins).to eq(1)
  end

  xit "should keep track of the number of wins to the computer" do
    weapon_choice = 'paper'
    computer_choice = 'scissors'
    game.winner_of(weapon_choice, computer_choice)
    expect(game.computer_wins).to eq(1)
  end

  it "should keep track of the number for draws" do
    weapon_choice = 'paper'
    computer_choice = 'paper'
    game.winner_of(weapon_choice, computer_choice)
    expect(game.number_of_draws).to eq(1)
  end

  it "should be able to hold player" do
    game.add_player(player)
    expect(game.player_one).to eq(player)
  end

   it "should be able to hold players" do
    game.add_player(player)
    game.add_player(player1)
    expect(game.player_one).to eq(player)
    expect(game.player_two).to eq(player1)
  end


end