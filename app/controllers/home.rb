

get '/' do
  erb :home_page
end

post '/new_player' do
  # @name = params[:name]
  @opponent = params[:opponent]
  session[:name] = params[:name]
  if params[:name] ==""
		flash[:notice]="Please enter name"
		redirect('/')

	else
		session[:name] = params[:name]
		params[:opponent] == 'computer' ? @opponent = 'computer' : @opponent = 'multiplayer'
		redirect("/#{@opponent}")
	end
  
end

get '/multiplayer' do
	erb :multiplayer
end
