class Player < Spaceship
  attr_reader :score

  def collect_stars(stars)
    close_stars = stars.reject! do |star|
      Gosu::distance(@x, @y, star.x, star.y) < 35
    end
    @score += 1 if close_stars
  end
end
