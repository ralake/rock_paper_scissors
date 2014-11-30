require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rock_Paper_Scissors < Sinatra::Base

  GAME = Game.new
  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  post '/registration' do
    erb :registration
  end

  get '/game' do
    if session[:game]
      game = session[:game]
      @player = game.find_player(Player)
    else
    end
    erb :game
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    @computer_player = ComputerPlayer.new
    game = Game.new
    game.add_player(@player)
    game.add_player(@computer_player)
    session[:game] = game
    erb :game
  end

  post '/result' do
    game = session[:game]
    @player = game.find_player(Player)
    @computer_player = game.find_player(ComputerPlayer)
    @player.choose(params[:choice])
    @computer_player.choose
    @result = game.results
    erb :result
  end

  run! if app_file == $0

end
