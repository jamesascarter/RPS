get '/' do
  erb :home_page
end

post '/new_player' do
  @name = params[:name]
  session[:name] = params[:name]
  player = Player.new(name: @name)
  redirect '/gamepage'
end