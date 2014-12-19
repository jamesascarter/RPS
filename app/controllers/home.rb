get '/' do
  erb :home_page
end

post '/new_player' do

  if params[:name] =="" || params[:opponent] == nil
		flash[:notice]="Please enter name AND opponent"
		redirect('/')

	else
		player_name = params[:name]
		PLAYER = Player.new(params[:name])
		session[:name] = params[:name]
		params[:opponent] == 'computer' ? @opponent = 'computer' : @opponent = 'multiplayer'
		redirect("/#{@opponent}")
	end
  
end
