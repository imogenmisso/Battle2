class Player

  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 60
  end

  def name
    @name
  end

end
