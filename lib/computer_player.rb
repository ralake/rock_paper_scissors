class ComputerPlayer

  attr_reader :options

  def initialize
    @options = [:rock, :paper, :scissors]
  end

  def choice
    options.sample
  end

end