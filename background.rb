class Background
  def draw
    image.draw(0, 0, ZOrder::Background)
  end

  private
  def image
    G::Image.new(Game.instance, "media/Space.png", true)
  end
end
