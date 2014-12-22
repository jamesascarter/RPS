get '/' do
  erb :home_page
end

post '/new_player' do

  if params[:name] =="" || params[:opponent] == nil
		flash[:notice]="Please enter name AND opponent"
		redirect('/')

	else
		PLAYER = Player.new(params[:name])
		session[:name] = params[:name]
		GAME.add_player(PLAYER)
		params[:opponent] == 'computer' ? @opponent = 'computer' : @opponent = 'multiplayer'
		redirect("/#{@opponent}")
	end
  
end
