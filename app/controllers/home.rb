

get '/' do
  erb :home_page
end

post '/new_player' do
  player = Player.new

  session[:name] = params[:name]
  if params[:name] =="" || params[:opponent] == nil
		flash[:notice]="Please enter name AND opponent"
		redirect('/')

	else
		player.name = params[:name]
		session[:name] = params[:name]
		params[:opponent] == 'computer' ? @opponent = 'computer' : @opponent = 'multiplayer'
		redirect("/#{@opponent}")
	end
  
end
