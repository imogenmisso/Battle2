class Player

  attr_reader :score, :name

  def initialize(name)
    @name = name
    @score = 60
  end

  def receive_damage
    @score -= 10
  end

end
