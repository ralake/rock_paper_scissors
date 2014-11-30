class Rock_Paper_Scissors

  post '/result' do
    game = session[:game]
    @player = game.find_player(Player)
    @computer_player = game.find_player(ComputerPlayer)
    @player.choose(params[:choice])
    @computer_player.choose
    @result = game.results
    erb :result
  end

end