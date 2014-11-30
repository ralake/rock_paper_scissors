class Game

  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player)
    players << player
  end

  def winning_combinations
    { "Rock" => "Scissors",
     "Paper" => "Rock", 
     "Scissors" => "Paper" }
  end

  def won?
    players[0].choice == winning_combinations.key(players[1].choice)
  end

  def lost?
    players[1].choice != winning_combinations.key(players[1].choice)
  end

  def draw?
    players[0].choice == players[1].choice
  end

  def results
    return "You win!" if won?
    return "It's a draw." if draw?
    return "You lose..." if lost?
  end

end