GAME = Game.new

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
  erb :multiplayer
end