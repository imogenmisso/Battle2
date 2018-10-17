class Player

  def initialize(name)
    @name = name
    @score = 60
  end

  def name
    @name
  end

  def score
    @score
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @score -= 10
  end
  
end
