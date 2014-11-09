require './app/models/player'

describe Player do

	let(:player) {Player.new("James", "Rock")}

	it 'has a name' do
		expect(player.name).to eq('James')
	end

	it 'should be able to choose a weapon' do
		expect(player.weapon_choice).to eq('Rock')
	end
end