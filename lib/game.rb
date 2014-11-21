class Game

  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player)
    players << player
  end

  def winning_combinations
    { :rock => :scissors, :paper => :rock, :scissors => :paper }
  end

  def won?
    return true if players[0].choice == winning_combinations.key(players[1].choice)
    return "Draw!" if players[0].choice == players[1].choice
    return false if players[1].choice != winning_combinations.key(players[1].choice)
  end

end