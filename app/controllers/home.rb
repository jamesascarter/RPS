

get '/' do
  erb :home_page
end

post '/new_player' do
  # @opponent = params[:opponent]
  session[:name] = params[:name]
  if params[:name] =="" || params[:opponent] == nil
		flash[:notice]="Please enter name AND opponent"
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
