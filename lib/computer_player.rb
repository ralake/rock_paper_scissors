class ComputerPlayer

  attr_reader :options, :choice

  def initialize
    @options = ["Rock", "Paper", "Scissors"]
  end

  def choose
    @choice = options.sample
  end

end