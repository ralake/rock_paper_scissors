class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choice(weapon)
    @choice = weapon
  end

end