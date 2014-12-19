require_relative 'home'

GAME = Game.new

get '/computer' do
  erb :gamepage
end

post '/gamepage' do
  @name =session[:name]
  PLAYER.weapon_choice = params[:weapon_choice]
  @computer_choice = GAME.computer_choice
end

get '/waiting_page' do
  erb :waiting_page
end