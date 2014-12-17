GAME = Game.new

get '/computer' do
  # @name =session[:name]
  # @weapon_choice = params[:weapon_choice]
  # @computer_choice = GAME.computer_choice
  # GAME.winner_of(@weapon_choice, @computer_choice)
  erb :gamepage
end

post '/gamepage' do
  @name =session[:name]
  @weapon_choice = params[:weapon_choice]
  @computer_choice = GAME.computer_choice
  erb :gamepage
end