class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.score -= 10
  end

end