require 'sinatra/base'
require './lib/player'

class Rock_Paper_Scissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/registration' do
    erb :registration
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    erb :game
  end

  run! if app_file == $0

end
