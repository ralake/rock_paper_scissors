require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rock_Paper_Scissors < Sinatra::Base

  GAME = Game.new
  
  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  post '/registration' do
    erb :registration
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    @computer_player = ComputerPlayer.new
    GAME.add_player(@player)
    GAME.add_player(@computer_player)
    @player.choice(params[:choice])
    @computer_player.choice
    erb :game
  end



  run! if app_file == $0

end
