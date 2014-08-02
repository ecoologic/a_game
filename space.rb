class Space
  IMAGE = G::Image.new(Game.instance, "media/Space.png", true)

  def draw
    IMAGE.draw(0, 0, ZOrder::Background)
  end
end
