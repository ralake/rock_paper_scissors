require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rock_Paper_Scissors < Sinatra::Base

  GAME = Game.new

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
    @player = GAME.players.select { |player| player.object_id == session[:player] }.first
    @computer_player = GAME.players.select { |player| player.object_id == session[:computer_player] }.first
    erb :game
  end

  post '/game' do
    @player = Player.new(params[:player_name])
    session[:player] = @player.object_id
    @computer_player = ComputerPlayer.new
    session[:computer_player] = @computer_player.object_id
    GAME.add_player(@player)
    GAME.add_player(@computer_player)
    erb :game
  end

  post '/result' do
    @player = GAME.players.select { |player| player.object_id == session[:player] }.first
    @computer_player = GAME.players.select { |player| player.object_id == session[:computer_player] }.first
    @player.choose(params[:choice])
    @computer_player.choose
    @result = GAME.results
    erb :result
  end

  run! if app_file == $0

end
