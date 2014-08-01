class Player < Spaceship
  attr_reader :score

  def collide_with(objects)
    @score += objects.size
    puts @score
  end
end
