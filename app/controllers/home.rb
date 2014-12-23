GAME = Game.new

get '/' do
  erb :home_page
end

post '/new_player' do

  if params[:name] =="" || params[:opponent] == nil
		flash[:notice]="Please enter name AND opponent"
		redirect('/')

	else
		player = Player.new(params[:name])
		GAME.add_player(player)
		p session.inspect
		p GAME.inspect
		@name = player.name
		session[:me] = player
		params[:opponent] == 'computer' ? @opponent = 'computer' : @opponent = 'multiplayer'
		redirect("/#{@opponent}")
	end
  
end
