class Star < Element
  def initialize
    @animation = G::Image::load_tiles(Game.instance, "media/Star.png", 25, 25, false)
    @color     = random_color
    @x, @y     = random_warp
  end

  def draw  
    image = @animation[G::milliseconds / 100 % @animation.size]
    image.draw(
      @x - image.width / 2.0,
      @y - image.height / 2.0,
      ZOrder::Stars, 1, 1,
      @color,
      :add
    )
  end

  private
  def random_warp
    [(rand * Game.instance.width), (rand * Game.instance.height)]
  end

  def random_color
    G::Color.new(0xff000000).tap do |color|
      color.red   = rand(256 - 40) + 40
      color.green = rand(256 - 40) + 40
      color.blue  = rand(256 - 40) + 40
    end
  end
end
