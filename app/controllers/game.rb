class Rock_Paper_Scissors  

  get '/game' do
    session[:game]
    game = session[:game]
    @player = game.find_player(Player)
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

end