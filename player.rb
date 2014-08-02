class Player < Spaceship
  attr_reader :score

  def collide
    @score += 1
  end
end
