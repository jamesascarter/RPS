get '/computer' do
  erb :gamepage
end

post '/gamepage' do
  @name =session[:name]
  @weapon_choice = params[:weapon_choice]
  @computer_choice = GAME.computer_choice
  erb :gamepage
end

get '/multiplayer' do
	if GAME.player_two != nil
		redirect '/multiplayerchoice'
	end
	erb :multiplayer
end

get '/multiplayerchoice' do
  erb :multiplayerchoice
end