class ComputerPlayer

  attr_reader :options, :choice

  def initialize
    @options = [:rock, :paper, :scissors]
  end

  def choose
    @choice = options.sample
  end

end