class Player < Spaceship
  attr_reader :score

  def collide
    Sound.instance.play(:beep)
    @score += 1
  end
end
