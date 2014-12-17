

get '/' do
  erb :home_page
end

post '/new_player' do
  @name = params[:name]
  @opponent = params[:opponent]
  session[:name] = params[:name]
  if params[:name] ==""
		flash[:notice]="Please enter name"
		redirect('/')
	end
  
end