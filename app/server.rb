require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  post '/game' do
    @player = Player.new
    @player.name = params[:player_name]
  end

  run! if app_file == $0

end
