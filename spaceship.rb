class Spaceship < Element
  IMAGE = G::Image.new(Game.instance, "media/Starfighter.bmp", false)

  def initialize(position:)
    @vel_x = @vel_y = @angle = 0.0
    @x, @y = position
    @score = 0
  end

  def turn_left
    @angle -= 4.5
  end

  def turn_right
    @angle += 4.5
  end

  def accelerate
    @vel_x += G::offset_x(@angle, 0.5)
    @vel_y += G::offset_y(@angle, 0.5)
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= Game.instance.width
    @y %= Game.instance.height

    @vel_x *= 0.95
    @vel_y *= 0.95
  end

  def draw
    IMAGE.draw_rot(@x, @y, 1, @angle)
  end
end
