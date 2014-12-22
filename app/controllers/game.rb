GAME = Game.new

get '/computer' do
  erb :gamepage
end

post '/gamepage' do
  @name =session[:name]
  PLAYER.weapon_choice = params[:weapon_choice]
  @computer_choice = GAME.computer_choice
  erb :gamepage
end

get '/multiplayer' do
	erb :multiplayer
	if GAME.players.count == 2
		redirect '/computer'
	else
		redirect '/waiting_page'
	end
end

get '/waiting_page' do
  erb :waiting_page
end